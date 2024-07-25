# BckbnPay::PaymentMethodsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payment_methods_id_get**](PaymentMethodsApi.md#payment_methods_id_get) | **GET** /payment_methods/{id} | Retrieve a payment method |
| [**payment_methods_post**](PaymentMethodsApi.md#payment_methods_post) | **POST** /payment_methods | Create a payment method |


## payment_methods_id_get

> <PaymentMethod> payment_methods_id_get(authorization, x_api_version, content_type, id)

Retrieve a payment method

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::PaymentMethodsApi.new
authorization = 'Bearer TOKEN' # String | 
x_api_version = 'x_api_version_example' # String | 
content_type = 'application/json' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a payment method
  result = api_instance.payment_methods_id_get(authorization, x_api_version, content_type, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_id_get: #{e}"
end
```

#### Using the payment_methods_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethod>, Integer, Hash)> payment_methods_id_get_with_http_info(authorization, x_api_version, content_type, id)

```ruby
begin
  # Retrieve a payment method
  data, status_code, headers = api_instance.payment_methods_id_get_with_http_info(authorization, x_api_version, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethod>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** |  |  |
| **x_api_version** | **String** |  |  |
| **content_type** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payment_methods_post

> <PaymentMethod> payment_methods_post(authorization, x_api_version, content_type, payment_methods_post_request)

Create a payment method

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::PaymentMethodsApi.new
authorization = 'Bearer TOKEN' # String | 
x_api_version = 'x_api_version_example' # String | 
content_type = 'application/json' # String | 
payment_methods_post_request = BckbnPay::PaymentMethodsPostRequest.new # PaymentMethodsPostRequest | 

begin
  # Create a payment method
  result = api_instance.payment_methods_post(authorization, x_api_version, content_type, payment_methods_post_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_post: #{e}"
end
```

#### Using the payment_methods_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethod>, Integer, Hash)> payment_methods_post_with_http_info(authorization, x_api_version, content_type, payment_methods_post_request)

```ruby
begin
  # Create a payment method
  data, status_code, headers = api_instance.payment_methods_post_with_http_info(authorization, x_api_version, content_type, payment_methods_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethod>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** |  |  |
| **x_api_version** | **String** |  |  |
| **content_type** | **String** |  |  |
| **payment_methods_post_request** | [**PaymentMethodsPostRequest**](PaymentMethodsPostRequest.md) |  |  |

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

