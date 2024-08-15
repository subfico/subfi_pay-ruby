# BckbnPay::PaymentMethodsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /payment_methods | Create a payment method |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /payment_methods/{id} | Retrieve a payment method |


## create_payment_method

> <PaymentMethodResponse> create_payment_method(x_api_version, payment_method_attributes, opts)

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
x_api_version = 'x_api_version_example' # String | 
payment_method_attributes = BckbnPay::PaymentMethodAttributes.new({type: 'type_example'}) # PaymentMethodAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a payment method
  result = api_instance.create_payment_method(x_api_version, payment_method_attributes, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> create_payment_method_with_http_info(x_api_version, payment_method_attributes, opts)

```ruby
begin
  # Create a payment method
  data, status_code, headers = api_instance.create_payment_method_with_http_info(x_api_version, payment_method_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **payment_method_attributes** | [**PaymentMethodAttributes**](PaymentMethodAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_method

> <PaymentMethodResponse> get_payment_method(x_api_version, id)

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
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a payment method
  result = api_instance.get_payment_method(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> get_payment_method_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a payment method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

