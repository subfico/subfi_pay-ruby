# SubfiPay::SetupIntentsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_setup_intent**](SetupIntentsApi.md#create_setup_intent) | **POST** /setup_intents | Create a new setup intent |


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

