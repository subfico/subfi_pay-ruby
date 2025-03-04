# SubfiPay::ProcessorApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_processor**](ProcessorApi.md#get_processor) | **GET** /processors/{id} | Retrieve a processor |


## get_processor

> <ProcessorResponse> get_processor(x_api_version, x_account_id)

Retrieve a processor

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

api_instance = SubfiPay::ProcessorApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 

begin
  # Retrieve a processor
  result = api_instance.get_processor(x_api_version, x_account_id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ProcessorApi->get_processor: #{e}"
end
```

#### Using the get_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessorResponse>, Integer, Hash)> get_processor_with_http_info(x_api_version, x_account_id)

```ruby
begin
  # Retrieve a processor
  data, status_code, headers = api_instance.get_processor_with_http_info(x_api_version, x_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessorResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ProcessorApi->get_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |

### Return type

[**ProcessorResponse**](ProcessorResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

