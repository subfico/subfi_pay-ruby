# SubfiPay::AccessKeysApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_access_key**](AccessKeysApi.md#delete_access_key) | **DELETE** /access_keys/{id} | Delete an access key by ID |
| [**list_access_keys**](AccessKeysApi.md#list_access_keys) | **GET** /access_keys | List all access keys |
| [**roll_access_key**](AccessKeysApi.md#roll_access_key) | **POST** /access_keys/{id}/roll | Roll an access key by ID |


## delete_access_key

> delete_access_key(x_api_version, id)

Delete an access key by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubfiPay::AccessKeysApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Delete an access key by ID
  api_instance.delete_access_key(x_api_version, id)
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->delete_access_key: #{e}"
end
```

#### Using the delete_access_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_access_key_with_http_info(x_api_version, id)

```ruby
begin
  # Delete an access key by ID
  data, status_code, headers = api_instance.delete_access_key_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->delete_access_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_access_keys

> <ListAccessKeysResponse> list_access_keys(x_api_version, opts)

List all access keys

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubfiPay::AccessKeysApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all access keys
  result = api_instance.list_access_keys(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->list_access_keys: #{e}"
end
```

#### Using the list_access_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccessKeysResponse>, Integer, Hash)> list_access_keys_with_http_info(x_api_version, opts)

```ruby
begin
  # List all access keys
  data, status_code, headers = api_instance.list_access_keys_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccessKeysResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->list_access_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListAccessKeysResponse**](ListAccessKeysResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## roll_access_key

> <AccessKey> roll_access_key(x_api_version, id, roll_access_key_attributes)

Roll an access key by ID

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubfiPay::AccessKeysApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 
roll_access_key_attributes = SubfiPay::RollAccessKeyAttributes.new # RollAccessKeyAttributes | 

begin
  # Roll an access key by ID
  result = api_instance.roll_access_key(x_api_version, id, roll_access_key_attributes)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->roll_access_key: #{e}"
end
```

#### Using the roll_access_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessKey>, Integer, Hash)> roll_access_key_with_http_info(x_api_version, id, roll_access_key_attributes)

```ruby
begin
  # Roll an access key by ID
  data, status_code, headers = api_instance.roll_access_key_with_http_info(x_api_version, id, roll_access_key_attributes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessKey>
rescue SubfiPay::ApiError => e
  puts "Error when calling AccessKeysApi->roll_access_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |
| **roll_access_key_attributes** | [**RollAccessKeyAttributes**](RollAccessKeyAttributes.md) |  |  |

### Return type

[**AccessKey**](AccessKey.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

