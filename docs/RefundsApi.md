# BckbnPay::RefundsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_refund**](RefundsApi.md#create_refund) | **POST** /refunds | Create a refund |


## create_refund

> <RefundResponse> create_refund(x_api_version, refund_attributes, opts)

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
refund_attributes = BckbnPay::RefundAttributes.new({charge_id: 'charge_id_example'}) # RefundAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a refund
  result = api_instance.create_refund(x_api_version, refund_attributes, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund: #{e}"
end
```

#### Using the create_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> create_refund_with_http_info(x_api_version, refund_attributes, opts)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_refund_with_http_info(x_api_version, refund_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **refund_attributes** | [**RefundAttributes**](RefundAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

