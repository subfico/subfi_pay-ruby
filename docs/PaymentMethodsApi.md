# SubFiPay::PaymentMethodsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /payment_methods | Create a payment method |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /payment_methods/{id} | Retrieve a payment method |
| [**list_payment_methods**](PaymentMethodsApi.md#list_payment_methods) | **GET** /payment_methods | List all payment methods |


## create_payment_method

> <PaymentMethodResponse> create_payment_method(x_api_version, x_account_id, payment_method_attributes, opts)

Create a payment method

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

api_instance = SubFiPay::PaymentMethodsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
payment_method_attributes = SubFiPay::PaymentMethodAttributes.new({type: 'type_example'}) # PaymentMethodAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a payment method
  result = api_instance.create_payment_method(x_api_version, x_account_id, payment_method_attributes, opts)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> create_payment_method_with_http_info(x_api_version, x_account_id, payment_method_attributes, opts)

```ruby
begin
  # Create a payment method
  data, status_code, headers = api_instance.create_payment_method_with_http_info(x_api_version, x_account_id, payment_method_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **payment_method_attributes** | [**PaymentMethodAttributes**](PaymentMethodAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_method

> <PaymentMethodResponse> get_payment_method(x_api_version, x_account_id, id)

Retrieve a payment method

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

api_instance = SubFiPay::PaymentMethodsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a payment method
  result = api_instance.get_payment_method(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> get_payment_method_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a payment method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_methods

> <ListPaymentMethodsResponse> list_payment_methods(x_api_version, x_account_id, customer_id, opts)

List all payment methods

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

api_instance = SubFiPay::PaymentMethodsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
customer_id = 'customer_id_example' # String | The ID of the customer to filter payment methods by.
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all payment methods
  result = api_instance.list_payment_methods(x_api_version, x_account_id, customer_id, opts)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_methods: #{e}"
end
```

#### Using the list_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentMethodsResponse>, Integer, Hash)> list_payment_methods_with_http_info(x_api_version, x_account_id, customer_id, opts)

```ruby
begin
  # List all payment methods
  data, status_code, headers = api_instance.list_payment_methods_with_http_info(x_api_version, x_account_id, customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentMethodsResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **customer_id** | **String** | The ID of the customer to filter payment methods by. |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListPaymentMethodsResponse**](ListPaymentMethodsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

