# SubfiPay::WebhookRequestsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_webhook_requests**](WebhookRequestsApi.md#list_webhook_requests) | **GET** /webhook_requests | List all webhook requests |
| [**resend_webhook_request**](WebhookRequestsApi.md#resend_webhook_request) | **POST** /webhook_requests/{id}/resend | Resend webhook request by ID |


## list_webhook_requests

> <ListWebhookRequestsResponse> list_webhook_requests(x_api_version, opts)

List all webhook requests

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

api_instance = SubfiPay::WebhookRequestsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all webhook requests
  result = api_instance.list_webhook_requests(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookRequestsApi->list_webhook_requests: #{e}"
end
```

#### Using the list_webhook_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookRequestsResponse>, Integer, Hash)> list_webhook_requests_with_http_info(x_api_version, opts)

```ruby
begin
  # List all webhook requests
  data, status_code, headers = api_instance.list_webhook_requests_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookRequestsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookRequestsApi->list_webhook_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListWebhookRequestsResponse**](ListWebhookRequestsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_webhook_request

> resend_webhook_request(id, x_api_version)

Resend webhook request by ID

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

api_instance = SubfiPay::WebhookRequestsApi.new
id = 'id_example' # String | The ID of the webhook request to resend
x_api_version = 'x_api_version_example' # String | 

begin
  # Resend webhook request by ID
  api_instance.resend_webhook_request(id, x_api_version)
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookRequestsApi->resend_webhook_request: #{e}"
end
```

#### Using the resend_webhook_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_webhook_request_with_http_info(id, x_api_version)

```ruby
begin
  # Resend webhook request by ID
  data, status_code, headers = api_instance.resend_webhook_request_with_http_info(id, x_api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SubfiPay::ApiError => e
  puts "Error when calling WebhookRequestsApi->resend_webhook_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook request to resend |  |
| **x_api_version** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

