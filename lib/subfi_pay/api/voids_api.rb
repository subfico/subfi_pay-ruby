=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module SubfiPay
  class VoidsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a void
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param void_attributes [VoidAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [VoidResponse]
    def create_void(x_api_version, x_account_id, void_attributes, opts = {})
      data, _status_code, _headers = create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts)
      data
    end

    # Create a void
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param void_attributes [VoidAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [Array<(VoidResponse, Integer, Hash)>] VoidResponse data, response status code and response headers
    def create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoidsApi.create_void ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling VoidsApi.create_void"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling VoidsApi.create_void"
      end
      # verify the required parameter 'void_attributes' is set
      if @api_client.config.client_side_validation && void_attributes.nil?
        fail ArgumentError, "Missing the required parameter 'void_attributes' when calling VoidsApi.create_void"
      end
      # resource path
      local_var_path = '/voids'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id
      header_params[:'X-Idempotency-Key'] = opts[:'x_idempotency_key'] if !opts[:'x_idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(void_attributes)

      # return_type
      return_type = opts[:debug_return_type] || 'VoidResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"VoidsApi.create_void",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoidsApi#create_void\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
