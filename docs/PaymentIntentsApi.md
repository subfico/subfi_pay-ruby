# SubFiPay::PaymentIntentsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_intent**](PaymentIntentsApi.md#cancel_payment_intent) | **POST** /payment_intents/{id}/cancel | Cancel a payment intent |
| [**capture_payment_intent**](PaymentIntentsApi.md#capture_payment_intent) | **POST** /payment_intents/{id}/capture | Capture a payment intent |
| [**confirm_payment_intent**](PaymentIntentsApi.md#confirm_payment_intent) | **POST** /payment_intents/{id}/confirm | Confirm a payment intent |
| [**create_payment_intent**](PaymentIntentsApi.md#create_payment_intent) | **POST** /payment_intents | Create a new payment intent |
| [**get_payment_intent**](PaymentIntentsApi.md#get_payment_intent) | **GET** /payment_intents/{id} | Retrieve a payment intent by ID |
| [**list_payment_intents**](PaymentIntentsApi.md#list_payment_intents) | **GET** /payment_intents | List payment intents |
| [**update_payment_intent**](PaymentIntentsApi.md#update_payment_intent) | **PATCH** /payment_intents/{id} | Update a payment intent |


## cancel_payment_intent

> <PaymentIntentResponse> cancel_payment_intent(x_api_version, x_account_id, id)

Cancel a payment intent

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the payment intent to cancel

begin
  # Cancel a payment intent
  result = api_instance.cancel_payment_intent(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent: #{e}"
end
```

#### Using the cancel_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> cancel_payment_intent_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Cancel a payment intent
  data, status_code, headers = api_instance.cancel_payment_intent_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to cancel |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_payment_intent

> <PaymentIntentResponse> capture_payment_intent(x_api_version, x_account_id, id)

Capture a payment intent

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the payment intent to capture

begin
  # Capture a payment intent
  result = api_instance.capture_payment_intent(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent: #{e}"
end
```

#### Using the capture_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> capture_payment_intent_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Capture a payment intent
  data, status_code, headers = api_instance.capture_payment_intent_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to capture |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirm_payment_intent

> <PaymentIntentResponse> confirm_payment_intent(x_api_version, x_account_id, id)

Confirm a payment intent

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the payment intent to confirm

begin
  # Confirm a payment intent
  result = api_instance.confirm_payment_intent(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent: #{e}"
end
```

#### Using the confirm_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> confirm_payment_intent_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Confirm a payment intent
  data, status_code, headers = api_instance.confirm_payment_intent_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to confirm |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_payment_intent

> <PaymentIntentResponse> create_payment_intent(x_api_version, x_account_id, payment_intent_create_request)

Create a new payment intent

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
payment_intent_create_request = SubFiPay::PaymentIntentCreateRequest.new # PaymentIntentCreateRequest | 

begin
  # Create a new payment intent
  result = api_instance.create_payment_intent(x_api_version, x_account_id, payment_intent_create_request)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> create_payment_intent_with_http_info(x_api_version, x_account_id, payment_intent_create_request)

```ruby
begin
  # Create a new payment intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(x_api_version, x_account_id, payment_intent_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **payment_intent_create_request** | [**PaymentIntentCreateRequest**](PaymentIntentCreateRequest.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_intent

> <PaymentIntentResponse> get_payment_intent(x_api_version, x_account_id, id)

Retrieve a payment intent by ID

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the payment intent to retrieve

begin
  # Retrieve a payment intent by ID
  result = api_instance.get_payment_intent(x_api_version, x_account_id, id)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent: #{e}"
end
```

#### Using the get_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> get_payment_intent_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a payment intent by ID
  data, status_code, headers = api_instance.get_payment_intent_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to retrieve |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_intents

> <ListPaymentIntentsResponse> list_payment_intents(x_api_version, x_account_id, opts)

List payment intents

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  connected_account_id: 'connected_account_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # List payment intents
  result = api_instance.list_payment_intents(x_api_version, x_account_id, opts)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents: #{e}"
end
```

#### Using the list_payment_intents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentIntentsResponse>, Integer, Hash)> list_payment_intents_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List payment intents
  data, status_code, headers = api_instance.list_payment_intents_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentIntentsResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **connected_account_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**ListPaymentIntentsResponse**](ListPaymentIntentsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_intent

> <PaymentIntentResponse> update_payment_intent(x_api_version, x_account_id, id, payment_intent_update_attributes)

Update a payment intent

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

api_instance = SubFiPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the payment intent to update
payment_intent_update_attributes = SubFiPay::PaymentIntentUpdateAttributes.new # PaymentIntentUpdateAttributes | 

begin
  # Update a payment intent
  result = api_instance.update_payment_intent(x_api_version, x_account_id, id, payment_intent_update_attributes)
  p result
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent: #{e}"
end
```

#### Using the update_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> update_payment_intent_with_http_info(x_api_version, x_account_id, id, payment_intent_update_attributes)

```ruby
begin
  # Update a payment intent
  data, status_code, headers = api_instance.update_payment_intent_with_http_info(x_api_version, x_account_id, id, payment_intent_update_attributes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue SubFiPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to update |  |
| **payment_intent_update_attributes** | [**PaymentIntentUpdateAttributes**](PaymentIntentUpdateAttributes.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

