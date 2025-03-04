# SubfiPay::VoidsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_void**](VoidsApi.md#create_void) | **POST** /voids | Create a void |
| [**get_void**](VoidsApi.md#get_void) | **GET** /voids/{id} | Retrieve a void by ID |
| [**list_voids**](VoidsApi.md#list_voids) | **GET** /voids | List all voids |


## create_void

> <VoidResponse> create_void(x_api_version, x_account_id, void_attributes, opts)

Create a void

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

api_instance = SubfiPay::VoidsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
void_attributes = SubfiPay::VoidAttributes.new({parent_transaction_id: 'parent_transaction_id_example'}) # VoidAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a void
  result = api_instance.create_void(x_api_version, x_account_id, void_attributes, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->create_void: #{e}"
end
```

#### Using the create_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoidResponse>, Integer, Hash)> create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts)

```ruby
begin
  # Create a void
  data, status_code, headers = api_instance.create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoidResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->create_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **void_attributes** | [**VoidAttributes**](VoidAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**VoidResponse**](VoidResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_void

> <VoidResponse> get_void(x_api_version, x_account_id, id)

Retrieve a void by ID

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

api_instance = SubfiPay::VoidsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the void to retrieve

begin
  # Retrieve a void by ID
  result = api_instance.get_void(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->get_void: #{e}"
end
```

#### Using the get_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoidResponse>, Integer, Hash)> get_void_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a void by ID
  data, status_code, headers = api_instance.get_void_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoidResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->get_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the void to retrieve |  |

### Return type

[**VoidResponse**](VoidResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_voids

> <ListVoidsResponse> list_voids(x_api_version, x_account_id, customer_id, opts)

List all voids

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

api_instance = SubfiPay::VoidsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
customer_id = 'customer_id_example' # String | The ID of the customer to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  parent_transaction_id: 'parent_transaction_id_example' # String | The ID of the original transaction to filter by
}

begin
  # List all voids
  result = api_instance.list_voids(x_api_version, x_account_id, customer_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->list_voids: #{e}"
end
```

#### Using the list_voids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVoidsResponse>, Integer, Hash)> list_voids_with_http_info(x_api_version, x_account_id, customer_id, opts)

```ruby
begin
  # List all voids
  data, status_code, headers = api_instance.list_voids_with_http_info(x_api_version, x_account_id, customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVoidsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->list_voids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **customer_id** | **String** | The ID of the customer to filter by |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **parent_transaction_id** | **String** | The ID of the original transaction to filter by | [optional] |

### Return type

[**ListVoidsResponse**](ListVoidsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

