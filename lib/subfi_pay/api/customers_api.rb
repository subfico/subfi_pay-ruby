=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module SubfiPay
  class CustomersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new customer
    # @param x_api_version [String] 
    # @param customer_create_request [CustomerCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerResponse]
    def create_customer(x_api_version, customer_create_request, opts = {})
      data, _status_code, _headers = create_customer_with_http_info(x_api_version, customer_create_request, opts)
      data
    end

    # Create a new customer
    # @param x_api_version [String] 
    # @param customer_create_request [CustomerCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def create_customer_with_http_info(x_api_version, customer_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.create_customer ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling CustomersApi.create_customer"
      end
      # verify the required parameter 'customer_create_request' is set
      if @api_client.config.client_side_validation && customer_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'customer_create_request' when calling CustomersApi.create_customer"
      end
      # resource path
      local_var_path = '/customers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :operation => :"CustomersApi.create_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#create_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a customer by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerResponse]
    def get_customer(x_api_version, id, opts = {})
      data, _status_code, _headers = get_customer_with_http_info(x_api_version, id, opts)
      data
    end

    # Retrieve a customer by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def get_customer_with_http_info(x_api_version, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.get_customer ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling CustomersApi.get_customer"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.get_customer"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :operation => :"CustomersApi.get_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#get_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all customers
    # @param x_api_version [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @option opts [String] :email The email to filter by
    # @option opts [String] :phone The phone to filter by
    # @option opts [String] :account_id 
    # @return [ListCustomersResponse]
    def list_customers(x_api_version, opts = {})
      data, _status_code, _headers = list_customers_with_http_info(x_api_version, opts)
      data
    end

    # List all customers
    # @param x_api_version [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of results to retrieve.
    # @option opts [Integer] :per_page Number of results per page.
    # @option opts [String] :email The email to filter by
    # @option opts [String] :phone The phone to filter by
    # @option opts [String] :account_id 
    # @return [Array<(ListCustomersResponse, Integer, Hash)>] ListCustomersResponse data, response status code and response headers
    def list_customers_with_http_info(x_api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.list_customers ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling CustomersApi.list_customers"
      end
      # resource path
      local_var_path = '/customers'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?

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
      return_type = opts[:debug_return_type] || 'ListCustomersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :operation => :"CustomersApi.list_customers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#list_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a customer by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param customer_update_request [CustomerUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerResponse]
    def update_customer(x_api_version, id, customer_update_request, opts = {})
      data, _status_code, _headers = update_customer_with_http_info(x_api_version, id, customer_update_request, opts)
      data
    end

    # Update a customer by ID
    # @param x_api_version [String] 
    # @param id [String] 
    # @param customer_update_request [CustomerUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def update_customer_with_http_info(x_api_version, id, customer_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.update_customer ...'
      end
      # verify the required parameter 'x_api_version' is set
      if @api_client.config.client_side_validation && x_api_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_version' when calling CustomersApi.update_customer"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.update_customer"
      end
      # verify the required parameter 'customer_update_request' is set
      if @api_client.config.client_side_validation && customer_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'customer_update_request' when calling CustomersApi.update_customer"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :operation => :"CustomersApi.update_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#update_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
