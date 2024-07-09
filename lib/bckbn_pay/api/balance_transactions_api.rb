=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module BckbnPay
  class BalanceTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all balance transactions
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @return [BalanceTransactionsGet200Response]
    def balance_transactions_get(x_api_version, content_type, opts = {})
      data, _status_code, _headers = balance_transactions_get_with_http_info(x_api_version, content_type, opts)
      data
    end

    # List all balance transactions
    # @param x_api_version [String] 
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BalanceTransactionsGet200Response, Integer, Hash)>] BalanceTransactionsGet200Response data, response status code and response headers
    def balance_transactions_get_with_http_info(x_api_version, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BalanceTransactionsApi.balance_transactions_get ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling BalanceTransactionsApi.balance_transactions_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling BalanceTransactionsApi.balance_transactions_get"
      end
      # resource path
      local_var_path = '/balance_transactions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BalanceTransactionsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"BalanceTransactionsApi.balance_transactions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BalanceTransactionsApi#balance_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
