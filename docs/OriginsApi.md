# SubfiPay::OriginsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_origin**](OriginsApi.md#create_origin) | **POST** /origins | Create a new origin |
| [**list_origins**](OriginsApi.md#list_origins) | **GET** /origins | List all origins |


## create_origin

> <OriginResponse> create_origin(x_api_version, origin_create_request)

Create a new origin

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

api_instance = SubfiPay::OriginsApi.new
x_api_version = 'x_api_version_example' # String | 
origin_create_request = SubfiPay::OriginCreateRequest.new # OriginCreateRequest | 

begin
  # Create a new origin
  result = api_instance.create_origin(x_api_version, origin_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling OriginsApi->create_origin: #{e}"
end
```

#### Using the create_origin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OriginResponse>, Integer, Hash)> create_origin_with_http_info(x_api_version, origin_create_request)

```ruby
begin
  # Create a new origin
  data, status_code, headers = api_instance.create_origin_with_http_info(x_api_version, origin_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OriginResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling OriginsApi->create_origin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **origin_create_request** | [**OriginCreateRequest**](OriginCreateRequest.md) |  |  |

### Return type

[**OriginResponse**](OriginResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_origins

> <ListOriginsResponse> list_origins(x_api_version, opts)

List all origins

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

api_instance = SubfiPay::OriginsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all origins
  result = api_instance.list_origins(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling OriginsApi->list_origins: #{e}"
end
```

#### Using the list_origins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOriginsResponse>, Integer, Hash)> list_origins_with_http_info(x_api_version, opts)

```ruby
begin
  # List all origins
  data, status_code, headers = api_instance.list_origins_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOriginsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling OriginsApi->list_origins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListOriginsResponse**](ListOriginsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

