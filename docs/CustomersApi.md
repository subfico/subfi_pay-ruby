# SubFiPay::CustomersApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a new customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{id} | Retrieve a customer by ID |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /customers | List all customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PATCH** /customers/{id} | Update a customer by ID |


## create_customer

> <Customer> create_customer(x_api_version, customer_create_request)

Create a new customer

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubFiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubFiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
customer_create_request = SubFiPay::CustomerCreateRequest.new # CustomerCreateRequest | 

begin
  # Create a new customer
  result = api_instance.create_customer(x_api_version, customer_create_request)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> create_customer_with_http_info(x_api_version, customer_create_request)

```ruby
begin
  # Create a new customer
  data, status_code, headers = api_instance.create_customer_with_http_info(x_api_version, customer_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **customer_create_request** | [**CustomerCreateRequest**](CustomerCreateRequest.md) |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <Customer> get_customer(x_api_version, x_account_id, id)

Retrieve a customer by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubFiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubFiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a customer by ID
  result = api_instance.get_customer(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a customer by ID
  data, status_code, headers = api_instance.get_customer_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <ListCustomersResponse> list_customers(x_api_version, x_account_id, opts)

List all customers

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubFiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubFiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all customers
  result = api_instance.list_customers(x_api_version, x_account_id, opts)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomersResponse>, Integer, Hash)> list_customers_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all customers
  data, status_code, headers = api_instance.list_customers_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomersResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListCustomersResponse**](ListCustomersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(x_api_version, x_account_id, id, customer_update_request)

Update a customer by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubFiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubFiPay::CustomersApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 
customer_update_request = SubFiPay::CustomerUpdateRequest.new # CustomerUpdateRequest | 

begin
  # Update a customer by ID
  result = api_instance.update_customer(x_api_version, x_account_id, id, customer_update_request)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(x_api_version, x_account_id, id, customer_update_request)

```ruby
begin
  # Update a customer by ID
  data, status_code, headers = api_instance.update_customer_with_http_info(x_api_version, x_account_id, id, customer_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue SubFiPay::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |
| **customer_update_request** | [**CustomerUpdateRequest**](CustomerUpdateRequest.md) |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

