# SubfiPay::WebhookAttemptsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_webhook_attempts**](WebhookAttemptsApi.md#list_webhook_attempts) | **GET** /webhook_attempts | List all webhook attempts |


## list_webhook_attempts

> <ListWebhookAttemptsResponse> list_webhook_attempts(x_api_version, webhook_request_id, opts)

List all webhook attempts

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

api_instance = SubfiPay::WebhookAttemptsApi.new
x_api_version = 'x_api_version_example' # String | 
webhook_request_id = 'webhook_request_id_example' # String | The ID of the webhook request to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all webhook attempts
  result = api_instance.list_webhook_attempts(x_api_version, webhook_request_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookAttemptsApi->list_webhook_attempts: #{e}"
end
```

#### Using the list_webhook_attempts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookAttemptsResponse>, Integer, Hash)> list_webhook_attempts_with_http_info(x_api_version, webhook_request_id, opts)

```ruby
begin
  # List all webhook attempts
  data, status_code, headers = api_instance.list_webhook_attempts_with_http_info(x_api_version, webhook_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookAttemptsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookAttemptsApi->list_webhook_attempts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **webhook_request_id** | **String** | The ID of the webhook request to filter by |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListWebhookAttemptsResponse**](ListWebhookAttemptsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

