=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module SubfiPay
  class PaymentIntentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to cancel
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def cancel_payment_intent(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = cancel_payment_intent_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Cancel a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to cancel
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def cancel_payment_intent_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.cancel_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.cancel_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.cancel_payment_intent"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentIntentsApi.cancel_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents/{id}/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.cancel_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#cancel_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to capture
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def capture_payment_intent(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = capture_payment_intent_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Capture a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to capture
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def capture_payment_intent_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.capture_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.capture_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.capture_payment_intent"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentIntentsApi.capture_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents/{id}/capture'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.capture_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#capture_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to confirm
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def confirm_payment_intent(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = confirm_payment_intent_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Confirm a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to confirm
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def confirm_payment_intent_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.confirm_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.confirm_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.confirm_payment_intent"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentIntentsApi.confirm_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents/{id}/confirm'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.confirm_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#confirm_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param payment_intent_create_request [PaymentIntentCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def create_payment_intent(x_api_version, x_account_id, payment_intent_create_request, opts = {})
      data, _status_code, _headers = create_payment_intent_with_http_info(x_api_version, x_account_id, payment_intent_create_request, opts)
      data
    end

    # Create a new payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param payment_intent_create_request [PaymentIntentCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def create_payment_intent_with_http_info(x_api_version, x_account_id, payment_intent_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.create_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.create_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.create_payment_intent"
      end
      # verify the required parameter 'payment_intent_create_request' is set
      if @api_client.config.client_side_validation && payment_intent_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent_create_request' when calling PaymentIntentsApi.create_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_intent_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.create_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#create_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a payment intent by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to retrieve
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def get_payment_intent(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = get_payment_intent_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Retrieve a payment intent by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def get_payment_intent_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.get_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.get_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.get_payment_intent"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentIntentsApi.get_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.get_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#get_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List payment intents
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [ListPaymentIntentsResponse]
    def list_payment_intents(x_api_version, x_account_id, opts = {})
      data, _status_code, _headers = list_payment_intents_with_http_info(x_api_version, x_account_id, opts)
      data
    end

    # List payment intents
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [Array<(ListPaymentIntentsResponse, Integer, Hash)>] ListPaymentIntentsResponse data, response status code and response headers
    def list_payment_intents_with_http_info(x_api_version, x_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.list_payment_intents ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.list_payment_intents"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.list_payment_intents"
      end
      # resource path
      local_var_path = '/payment_intents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      return_type = opts[:debug_return_type] || 'ListPaymentIntentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.list_payment_intents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#list_payment_intents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to update
    # @param payment_intent_update_request [PaymentIntentUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentResponse]
    def update_payment_intent(x_api_version, x_account_id, id, payment_intent_update_request, opts = {})
      data, _status_code, _headers = update_payment_intent_with_http_info(x_api_version, x_account_id, id, payment_intent_update_request, opts)
      data
    end

    # Update a payment intent
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] The ID of the payment intent to update
    # @param payment_intent_update_request [PaymentIntentUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentResponse, Integer, Hash)>] PaymentIntentResponse data, response status code and response headers
    def update_payment_intent_with_http_info(x_api_version, x_account_id, id, payment_intent_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.update_payment_intent ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling PaymentIntentsApi.update_payment_intent"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling PaymentIntentsApi.update_payment_intent"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentIntentsApi.update_payment_intent"
      end
      # verify the required parameter 'payment_intent_update_request' is set
      if @api_client.config.client_side_validation && payment_intent_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent_update_request' when calling PaymentIntentsApi.update_payment_intent"
      end
      # resource path
      local_var_path = '/payment_intents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_intent_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentIntentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.update_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#update_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
