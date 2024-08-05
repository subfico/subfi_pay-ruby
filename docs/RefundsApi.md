# BckbnPay::RefundsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**refunds_post**](RefundsApi.md#refunds_post) | **POST** /refunds | Create a refund |


## refunds_post

> <Refund> refunds_post(x_api_version, refunds_post_request)

Create a refund

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
refunds_post_request = BckbnPay::RefundsPostRequest.new # RefundsPostRequest | 

begin
  # Create a refund
  result = api_instance.refunds_post(x_api_version, refunds_post_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->refunds_post: #{e}"
end
```

#### Using the refunds_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> refunds_post_with_http_info(x_api_version, refunds_post_request)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.refunds_post_with_http_info(x_api_version, refunds_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->refunds_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **refunds_post_request** | [**RefundsPostRequest**](RefundsPostRequest.md) |  |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

