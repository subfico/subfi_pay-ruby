# SubfiPay::CustomersApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a new customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{id} | Retrieve a customer by ID |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /customers | List all customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PATCH** /customers/{id} | Update a customer by ID |


## create_customer

> <CustomerResponse> create_customer(x_api_version, customer_create_request)

Create a new customer

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = SubfiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
customer_create_request = SubfiPay::CustomerCreateRequest.new # CustomerCreateRequest | 

begin
  # Create a new customer
  result = api_instance.create_customer(x_api_version, customer_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> create_customer_with_http_info(x_api_version, customer_create_request)

```ruby
begin
  # Create a new customer
  data, status_code, headers = api_instance.create_customer_with_http_info(x_api_version, customer_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **customer_create_request** | [**CustomerCreateRequest**](CustomerCreateRequest.md) |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <CustomerResponse> get_customer(x_api_version, id)

Retrieve a customer by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = SubfiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a customer by ID
  result = api_instance.get_customer(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> get_customer_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a customer by ID
  data, status_code, headers = api_instance.get_customer_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <ListCustomersResponse> list_customers(x_api_version, opts)

List all customers

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = SubfiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  email: 'email_example', # String | The email to filter by
  phone: 'phone_example', # String | The phone to filter by
  account_id: 'account_id_example' # String | 
}

begin
  # List all customers
  result = api_instance.list_customers(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomersResponse>, Integer, Hash)> list_customers_with_http_info(x_api_version, opts)

```ruby
begin
  # List all customers
  data, status_code, headers = api_instance.list_customers_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomersResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **email** | **String** | The email to filter by | [optional] |
| **phone** | **String** | The phone to filter by | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**ListCustomersResponse**](ListCustomersResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <CustomerResponse> update_customer(x_api_version, id, customer_update_request)

Update a customer by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = SubfiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 
customer_update_request = SubfiPay::CustomerUpdateRequest.new # CustomerUpdateRequest | 

begin
  # Update a customer by ID
  result = api_instance.update_customer(x_api_version, id, customer_update_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> update_customer_with_http_info(x_api_version, id, customer_update_request)

```ruby
begin
  # Update a customer by ID
  data, status_code, headers = api_instance.update_customer_with_http_info(x_api_version, id, customer_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |
| **customer_update_request** | [**CustomerUpdateRequest**](CustomerUpdateRequest.md) |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

