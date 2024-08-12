# BckbnPay::SubMerchantsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sub_merchants_id_get**](SubMerchantsApi.md#sub_merchants_id_get) | **GET** /sub_merchants/{id} | Retrieve a sub-merchant |
| [**sub_merchants_post**](SubMerchantsApi.md#sub_merchants_post) | **POST** /sub_merchants | Create a sub-merchant |


## sub_merchants_id_get

> <SubMerchant> sub_merchants_id_get(x_api_version, id)

Retrieve a sub-merchant

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::SubMerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a sub-merchant
  result = api_instance.sub_merchants_id_get(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->sub_merchants_id_get: #{e}"
end
```

#### Using the sub_merchants_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubMerchant>, Integer, Hash)> sub_merchants_id_get_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a sub-merchant
  data, status_code, headers = api_instance.sub_merchants_id_get_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubMerchant>
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->sub_merchants_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**SubMerchant**](SubMerchant.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sub_merchants_post

> <SubMerchant> sub_merchants_post(x_api_version, sub_merchants_post_request, opts)

Create a sub-merchant

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::SubMerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
sub_merchants_post_request = BckbnPay::SubMerchantsPostRequest.new # SubMerchantsPostRequest | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a sub-merchant
  result = api_instance.sub_merchants_post(x_api_version, sub_merchants_post_request, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->sub_merchants_post: #{e}"
end
```

#### Using the sub_merchants_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubMerchant>, Integer, Hash)> sub_merchants_post_with_http_info(x_api_version, sub_merchants_post_request, opts)

```ruby
begin
  # Create a sub-merchant
  data, status_code, headers = api_instance.sub_merchants_post_with_http_info(x_api_version, sub_merchants_post_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubMerchant>
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->sub_merchants_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **sub_merchants_post_request** | [**SubMerchantsPostRequest**](SubMerchantsPostRequest.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**SubMerchant**](SubMerchant.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

