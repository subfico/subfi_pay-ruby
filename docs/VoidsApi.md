# SubfiPay::VoidsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_void**](VoidsApi.md#create_void) | **POST** /voids | Create a void |


## create_void

> <VoidResponse> create_void(x_api_version, x_account_id, void_attributes, opts)

Create a void

### Examples

```ruby
require 'time'
require 'subfi_pay'
# setup authorization
SubfiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = SubfiPay::VoidsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
void_attributes = SubfiPay::VoidAttributes.new({charge_id: 'charge_id_example'}) # VoidAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a void
  result = api_instance.create_void(x_api_version, x_account_id, void_attributes, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->create_void: #{e}"
end
```

#### Using the create_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoidResponse>, Integer, Hash)> create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts)

```ruby
begin
  # Create a void
  data, status_code, headers = api_instance.create_void_with_http_info(x_api_version, x_account_id, void_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoidResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling VoidsApi->create_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **void_attributes** | [**VoidAttributes**](VoidAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**VoidResponse**](VoidResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

