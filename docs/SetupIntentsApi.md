# SubfiPay::SetupIntentsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_setup_intent**](SetupIntentsApi.md#confirm_setup_intent) | **POST** /embed/setup_intents/{id}/confirm | Confirm a setup intent |
| [**create_setup_intent**](SetupIntentsApi.md#create_setup_intent) | **POST** /setup_intents | Create a new setup intent |
| [**get_setup_intent**](SetupIntentsApi.md#get_setup_intent) | **GET** /embed/setup_intents/{id} | Retrieve a setup intent by ID |


## confirm_setup_intent

> <SetupIntentResponse> confirm_setup_intent(x_api_version, x_account_id, id, setup_intent_confirm_request)

Confirm a setup intent

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

api_instance = SubfiPay::SetupIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the setup intent to confirm
setup_intent_confirm_request = SubfiPay::SetupIntentConfirmRequest.new # SetupIntentConfirmRequest | 

begin
  # Confirm a setup intent
  result = api_instance.confirm_setup_intent(x_api_version, x_account_id, id, setup_intent_confirm_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent: #{e}"
end
```

#### Using the confirm_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> confirm_setup_intent_with_http_info(x_api_version, x_account_id, id, setup_intent_confirm_request)

```ruby
begin
  # Confirm a setup intent
  data, status_code, headers = api_instance.confirm_setup_intent_with_http_info(x_api_version, x_account_id, id, setup_intent_confirm_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the setup intent to confirm |  |
| **setup_intent_confirm_request** | [**SetupIntentConfirmRequest**](SetupIntentConfirmRequest.md) |  |  |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_setup_intent

> <SetupIntentResponse> create_setup_intent(x_api_version, x_account_id, setup_intent_create_request)

Create a new setup intent

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

api_instance = SubfiPay::SetupIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
setup_intent_create_request = SubfiPay::SetupIntentCreateRequest.new # SetupIntentCreateRequest | 

begin
  # Create a new setup intent
  result = api_instance.create_setup_intent(x_api_version, x_account_id, setup_intent_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent: #{e}"
end
```

#### Using the create_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> create_setup_intent_with_http_info(x_api_version, x_account_id, setup_intent_create_request)

```ruby
begin
  # Create a new setup intent
  data, status_code, headers = api_instance.create_setup_intent_with_http_info(x_api_version, x_account_id, setup_intent_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **setup_intent_create_request** | [**SetupIntentCreateRequest**](SetupIntentCreateRequest.md) |  |  |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_setup_intent

> <SetupIntentResponse> get_setup_intent(x_api_version, x_account_id, id)

Retrieve a setup intent by ID

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

api_instance = SubfiPay::SetupIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the setup intent to retrieve

begin
  # Retrieve a setup intent by ID
  result = api_instance.get_setup_intent(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->get_setup_intent: #{e}"
end
```

#### Using the get_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> get_setup_intent_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a setup intent by ID
  data, status_code, headers = api_instance.get_setup_intent_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SetupIntentsApi->get_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the setup intent to retrieve |  |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

