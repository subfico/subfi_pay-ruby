=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module SubfiPay
  class WebhookEndpointsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook endpoint
    # @param x_api_version [String] 
    # @param create_webhook_endpoint_request [CreateWebhookEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def create_webhook_endpoint(x_api_version, create_webhook_endpoint_request, opts = {})
      data, _status_code, _headers = create_webhook_endpoint_with_http_info(x_api_version, create_webhook_endpoint_request, opts)
      data
    end

    # Create a webhook endpoint
    # @param x_api_version [String] 
    # @param create_webhook_endpoint_request [CreateWebhookEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def create_webhook_endpoint_with_http_info(x_api_version, create_webhook_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.create_webhook_endpoint ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling WebhookEndpointsApi.create_webhook_endpoint"
      end
      # verify the required parameter 'create_webhook_endpoint_request' is set
      if @api_client.config.client_side_validation && create_webhook_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_webhook_endpoint_request' when calling WebhookEndpointsApi.create_webhook_endpoint"
      end
      # resource path
      local_var_path = '/webhook_endpoints'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_webhook_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.create_webhook_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#create_webhook_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook_endpoint(x_api_version, x_account_id, id, opts = {})
      delete_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, opts)
      nil
    end

    # Delete a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.delete_webhook_endpoint ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling WebhookEndpointsApi.delete_webhook_endpoint"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling WebhookEndpointsApi.delete_webhook_endpoint"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.delete_webhook_endpoint"
      end
      # resource path
      local_var_path = '/webhook_endpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'X-Api-Version'] = x_api_version
      header_params[:'X-Account-Id'] = x_account_id

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.delete_webhook_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#delete_webhook_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def get_webhook_endpoint(x_api_version, x_account_id, id, opts = {})
      data, _status_code, _headers = get_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, opts)
      data
    end

    # Retrieve a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def get_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.get_webhook_endpoint ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling WebhookEndpointsApi.get_webhook_endpoint"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling WebhookEndpointsApi.get_webhook_endpoint"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.get_webhook_endpoint"
      end
      # resource path
      local_var_path = '/webhook_endpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.get_webhook_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#get_webhook_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all webhook endpoints
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [ListWebhookEndpointsResponse]
    def list_webhook_endpoints(x_api_version, x_account_id, opts = {})
      data, _status_code, _headers = list_webhook_endpoints_with_http_info(x_api_version, x_account_id, opts)
      data
    end

    # List all webhook endpoints
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @return [Array<(ListWebhookEndpointsResponse, Integer, Hash)>] ListWebhookEndpointsResponse data, response status code and response headers
    def list_webhook_endpoints_with_http_info(x_api_version, x_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.list_webhook_endpoints ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling WebhookEndpointsApi.list_webhook_endpoints"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling WebhookEndpointsApi.list_webhook_endpoints"
      end
      # resource path
      local_var_path = '/webhook_endpoints'

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
      return_type = opts[:debug_return_type] || 'ListWebhookEndpointsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.list_webhook_endpoints",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#list_webhook_endpoints\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param create_webhook_endpoint_request [CreateWebhookEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def update_webhook_endpoint(x_api_version, x_account_id, id, create_webhook_endpoint_request, opts = {})
      data, _status_code, _headers = update_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, create_webhook_endpoint_request, opts)
      data
    end

    # Update a webhook endpoint by ID
    # @param x_api_version [String] 
    # @param x_account_id [String] 
    # @param id [String] 
    # @param create_webhook_endpoint_request [CreateWebhookEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def update_webhook_endpoint_with_http_info(x_api_version, x_account_id, id, create_webhook_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.update_webhook_endpoint ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling WebhookEndpointsApi.update_webhook_endpoint"
      end
      # verify the required parameter 'x_account_id' is set
      if @api_client.config.client_side_validation && x_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_id' when calling WebhookEndpointsApi.update_webhook_endpoint"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.update_webhook_endpoint"
      end
      # verify the required parameter 'create_webhook_endpoint_request' is set
      if @api_client.config.client_side_validation && create_webhook_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_webhook_endpoint_request' when calling WebhookEndpointsApi.update_webhook_endpoint"
      end
      # resource path
      local_var_path = '/webhook_endpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_webhook_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.update_webhook_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#update_webhook_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
