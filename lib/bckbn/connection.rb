# frozen_string_literal: true

module Bckbn
  class Connection
    using Bckbn::CoreExt::StringExt

    HttpBadRequest          = Class.new(StandardError)
    HttpInternalServerError = Class.new(StandardError)
    HttpServiceUnavailable  = Class.new(StandardError)

    ERRORS = {
      Net::HTTPBadRequest => HttpBadRequest,
      Net::HTTPInternalServerError => HttpInternalServerError,
      Net::HTTPServiceUnavailable => HttpServiceUnavailable
    }.freeze

    def initialize(config)
      @config = config.empty? ? Bckbn.config : Bckbn::Configuration.new(**config)
    end

    def post_to_api(path, body, klass)
      headers = {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{config.access_token}",
        "X-Api-Version" => config.api_version,
        "X-Merchant-Id" => config.merchant_id,
        "X-Source-Ip-Address" => config.source_ip_address
      }

      url = URI.parse(config.api_base + path)
      request = Net::HTTP::Post.new(url.path)
      headers.reject! { |_, v| v.nil? || v == "" }
      headers.each { |k, v| request[k] = v }
      request.body = body.to_json

      response_handler(url, request) do |response, rbody|
        case response
        when Net::HTTPSuccess
          data = rbody.dig("data", klass.name.split("::").last.underscore)
          klass.new(data)
        else
          raise ERRORS[response.class], rbody ? rbody["errors"] : nil
        end
      end
    end

    private

    attr_reader :config

    def response_handler(url, request)
      http = Net::HTTP.new(url.host, url.port)
      # http.use_ssl = true

      response, body = begin
        r = http.request(request)
        [r, JSON.parse(r.body)]
      rescue Errno::ECONNREFUSED => e
        [Net::HTTPServiceUnavailable.new("1.1", "503", e.message), nil]
      end

      resp_obj = yield response, body

      resp_obj.tap do |ro|
        if ro.respond_to?(:fraud_result) && resp_obj.fraud_result
          ro.fraud_result = ::Bckbn::Transaction::FraudResult.new(**resp_obj.fraud_result)
        end
      end
    end
  end
end
