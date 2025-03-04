=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module SubfiPay
  class RefundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a refund
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the refund to cancel.
    # @param [Hash] opts the optional parameters
    # @return [RefundResponse]
    def cancel_refund(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = cancel_refund_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Cancel a refund
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the refund to cancel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RefundResponse, Integer, Hash)>] RefundResponse data, response status code and response headers
    def cancel_refund_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundsApi.cancel_refund ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling RefundsApi.cancel_refund"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling RefundsApi.cancel_refund"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RefundsApi.cancel_refund"
      end
      # resource path
      local_var_path = '/refunds/{id}/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RefundResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"RefundsApi.cancel_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#cancel_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a refund
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param refund_attributes [RefundAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [RefundResponse]
    def create_refund(x_api_version, x_account_id, refund_attributes, opts = {})
      data, _status_code, _headers = create_refund_with_http_info(x_api_version, x_account_id, refund_attributes, opts)
      data
    end

    # Create a refund
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param refund_attributes [RefundAttributes] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_idempotency_key 
    # @return [Array<(RefundResponse, Integer, Hash)>] RefundResponse data, response status code and response headers
    def create_refund_with_http_info(x_api_version, x_account_id, refund_attributes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundsApi.create_refund ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling RefundsApi.create_refund"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling RefundsApi.create_refund"
      end
      # verify the required parameter 'refund_attributes' is set
      if @api_client.config.client_side_validation && refund_attributes.nil?
        fail ArgumentError, "Missing the required parameter 'refund_attributes' when calling RefundsApi.create_refund"
      end
      # resource path
      local_var_path = '/refunds'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(refund_attributes)

      # return_type
      return_type = opts[:debug_return_type] || 'RefundResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"RefundsApi.create_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#create_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a refund by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the refund to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [RefundResponse]
    def get_refund(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = get_refund_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Get a refund by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the refund to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RefundResponse, Integer, Hash)>] RefundResponse data, response status code and response headers
    def get_refund_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundsApi.get_refund ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling RefundsApi.get_refund"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling RefundsApi.get_refund"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RefundsApi.get_refund"
      end
      # resource path
      local_var_path = '/refunds/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RefundResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"RefundsApi.get_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#get_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List refunds for a Charge
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param charge_id [String] The ID of the charge to which this refund belongs.
    # @param [Hash] opts the optional parameters
    # @return [ListRefundsResponse]
    def list_refunds(x_api_version, x_account_id, charge_id, opts = {})
      data, _status_code, _headers = list_refunds_with_http_info(x_api_version, x_account_id, charge_id, opts)
      data
    end

    # List refunds for a Charge
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param charge_id [String] The ID of the charge to which this refund belongs.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListRefundsResponse, Integer, Hash)>] ListRefundsResponse data, response status code and response headers
    def list_refunds_with_http_info(x_api_version, x_account_id, charge_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundsApi.list_refunds ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling RefundsApi.list_refunds"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling RefundsApi.list_refunds"
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling RefundsApi.list_refunds"
      end
      # resource path
      local_var_path = '/refunds'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'charge_id'] = charge_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListRefundsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"RefundsApi.list_refunds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#list_refunds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
