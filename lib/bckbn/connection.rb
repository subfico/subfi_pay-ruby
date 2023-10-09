# frozen_string_literal: true

module Bckbn
  class Connection
    using Bckbn::CoreExt::StringExt

    class BaseHttpError < StandardError
      attr_reader :logs

      def initialize(message, logs = [])
        super(message)
        @logs = logs
      end
    end

    HttpBadRequest          = Class.new(BaseHttpError)
    HttpInternalServerError = Class.new(BaseHttpError)
    HttpServiceUnavailable  = Class.new(BaseHttpError)

    ERRORS = {
      Net::HTTPBadRequest => HttpBadRequest,
      Net::HTTPInternalServerError => HttpInternalServerError,
      Net::HTTPServiceUnavailable => HttpServiceUnavailable
    }.freeze

    def initialize(per_req_config)
      global_config = Bckbn.config.to_h
      config = global_config.merge(per_req_config)

      @config = Bckbn::Configuration.new(**config)
      @logs = []
    end

    def post_to_api(path, body, klass)
      log(:debug, "POST #{path}\n\nData: #{body.to_json}")

      url = URI.parse(config.api_base + path)
      request = Net::HTTP::Post.new(url.path)
      bckbn_headers = headers(config)
      bckbn_headers.reject! { |_, v| v.nil? || v == "" }
      bckbn_headers.each { |k, v| request[k] = v }
      request.body = body.to_json

      response_handler(url, request) do |response, rbody|
        case response
        when Net::HTTPSuccess
          data = rbody.dig("data", klass.name.split("::").last.underscore)
          log(:debug, "\nResponse: #{data.to_json}")
          klass.new(**data, logs: @logs)
        else
          err_klass = ERRORS[response.class]
          message = "Error: #{rbody ? rbody["errors"] : "Unknown"}"
          log(:error, message)

          err = err_klass.new(message, @logs)
          raise err
        end
      end
    end

    private

    attr_reader :config

    def response_handler(url, request)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

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

    def headers(config)
      {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{config.access_token}",
        "X-Api-Version" => config.api_version,
        "X-Merchant-Id" => config.merchant_id,
        "X-Source-Ip-Address" => config.source_ip_address,
        "X-Idempotency-Key" => config.idempotency_key
      }
    end

    def log(level, message)
      return if LOG_LEVEL_RANKING[config.log_level] > LOG_LEVEL_RANKING[level]

      entry = "[#{level.to_s.upcase}] #{message}"
      @logs << entry
      entry
    end

    LOG_LEVEL_RANKING = {
      debug: 1,
      error: 2
    }.freeze
  end
end
