=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module BckbnPay
  class SubMerchantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a sub_merchant
    # @param x_api_version [String] 
    # @param sub_merchant_attributes [SubMerchantAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [SubMerchantResponse]
    def create_sub_merchant(x_api_version, sub_merchant_attributes, opts = {})
      data, _status_code, _headers = create_sub_merchant_with_http_info(x_api_version, sub_merchant_attributes, opts)
      data
    end

    # Create a sub_merchant
    # @param x_api_version [String] 
    # @param sub_merchant_attributes [SubMerchantAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [Array<(SubMerchantResponse, Integer, Hash)>] SubMerchantResponse data, response status code and response headers
    def create_sub_merchant_with_http_info(x_api_version, sub_merchant_attributes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubMerchantsApi.create_sub_merchant ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling SubMerchantsApi.create_sub_merchant"
      end
      # verify the required parameter 'sub_merchant_attributes' is set
      if @api_client.config.client_side_validation && sub_merchant_attributes.nil?
        fail ArgumentError, "Missing the required parameter 'sub_merchant_attributes' when calling SubMerchantsApi.create_sub_merchant"
      end
      # resource path
      local_var_path = '/sub_merchants'

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
      header_params[:'X-Idempotency-Key'] = opts[:'x_idempotency_key'] if !opts[:'x_idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sub_merchant_attributes)

      # return_type
      return_type = opts[:debug_return_type] || 'SubMerchantResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"SubMerchantsApi.create_sub_merchant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubMerchantsApi#create_sub_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a sub_merchant
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [SubMerchantResponse]
    def get_sub_merchant(x_api_version, id, opts = {})
      data, _status_code, _headers = get_sub_merchant_with_http_info(x_api_version, id, opts)
      data
    end

    # Retrieve a sub_merchant
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubMerchantResponse, Integer, Hash)>] SubMerchantResponse data, response status code and response headers
    def get_sub_merchant_with_http_info(x_api_version, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubMerchantsApi.get_sub_merchant ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling SubMerchantsApi.get_sub_merchant"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubMerchantsApi.get_sub_merchant"
      end
      # resource path
      local_var_path = '/sub_merchants/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SubMerchantResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"SubMerchantsApi.get_sub_merchant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubMerchantsApi#get_sub_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
