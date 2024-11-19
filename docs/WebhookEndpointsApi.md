# BckbnPay::WebhookEndpointsApi

All URIs are relative to *https://pay-sandbox.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_endpoint**](WebhookEndpointsApi.md#create_webhook_endpoint) | **POST** /webhook_endpoints | Create a webhook endpoint |
| [**delete_webhook_endpoint**](WebhookEndpointsApi.md#delete_webhook_endpoint) | **DELETE** /webhook_endpoints/{id} | Delete a webhook endpoint by ID |
| [**get_webhook_endpoint**](WebhookEndpointsApi.md#get_webhook_endpoint) | **GET** /webhook_endpoints/{id} | Retrieve a webhook endpoint by ID |
| [**list_webhook_endpoints**](WebhookEndpointsApi.md#list_webhook_endpoints) | **GET** /webhook_endpoints | List all webhook endpoints |
| [**update_webhook_endpoint**](WebhookEndpointsApi.md#update_webhook_endpoint) | **PATCH** /webhook_endpoints/{id} | Update a webhook endpoint by ID |


## create_webhook_endpoint

> <WebhookEndpoint> create_webhook_endpoint(x_api_version, create_webhook_endpoint_request)

Create a webhook endpoint

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::WebhookEndpointsApi.new
x_api_version = 'x_api_version_example' # String | 
create_webhook_endpoint_request = BckbnPay::CreateWebhookEndpointRequest.new # CreateWebhookEndpointRequest | 

begin
  # Create a webhook endpoint
  result = api_instance.create_webhook_endpoint(x_api_version, create_webhook_endpoint_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint: #{e}"
end
```

#### Using the create_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> create_webhook_endpoint_with_http_info(x_api_version, create_webhook_endpoint_request)

```ruby
begin
  # Create a webhook endpoint
  data, status_code, headers = api_instance.create_webhook_endpoint_with_http_info(x_api_version, create_webhook_endpoint_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **create_webhook_endpoint_request** | [**CreateWebhookEndpointRequest**](CreateWebhookEndpointRequest.md) |  |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_endpoint

> delete_webhook_endpoint(x_api_version, id)

Delete a webhook endpoint by ID

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::WebhookEndpointsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Delete a webhook endpoint by ID
  api_instance.delete_webhook_endpoint(x_api_version, id)
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->delete_webhook_endpoint: #{e}"
end
```

#### Using the delete_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_endpoint_with_http_info(x_api_version, id)

```ruby
begin
  # Delete a webhook endpoint by ID
  data, status_code, headers = api_instance.delete_webhook_endpoint_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->delete_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_webhook_endpoint

> <WebhookEndpoint> get_webhook_endpoint(x_api_version, id)

Retrieve a webhook endpoint by ID

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::WebhookEndpointsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a webhook endpoint by ID
  result = api_instance.get_webhook_endpoint(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->get_webhook_endpoint: #{e}"
end
```

#### Using the get_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> get_webhook_endpoint_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a webhook endpoint by ID
  data, status_code, headers = api_instance.get_webhook_endpoint_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->get_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhook_endpoints

> <ListWebhookEndpointsResponse> list_webhook_endpoints(x_api_version, opts)

List all webhook endpoints

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::WebhookEndpointsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all webhook endpoints
  result = api_instance.list_webhook_endpoints(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->list_webhook_endpoints: #{e}"
end
```

#### Using the list_webhook_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookEndpointsResponse>, Integer, Hash)> list_webhook_endpoints_with_http_info(x_api_version, opts)

```ruby
begin
  # List all webhook endpoints
  data, status_code, headers = api_instance.list_webhook_endpoints_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookEndpointsResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->list_webhook_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListWebhookEndpointsResponse**](ListWebhookEndpointsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_endpoint

> <WebhookEndpoint> update_webhook_endpoint(x_api_version, id, create_webhook_endpoint_request)

Update a webhook endpoint by ID

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::WebhookEndpointsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 
create_webhook_endpoint_request = BckbnPay::CreateWebhookEndpointRequest.new # CreateWebhookEndpointRequest | 

begin
  # Update a webhook endpoint by ID
  result = api_instance.update_webhook_endpoint(x_api_version, id, create_webhook_endpoint_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint: #{e}"
end
```

#### Using the update_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> update_webhook_endpoint_with_http_info(x_api_version, id, create_webhook_endpoint_request)

```ruby
begin
  # Update a webhook endpoint by ID
  data, status_code, headers = api_instance.update_webhook_endpoint_with_http_info(x_api_version, id, create_webhook_endpoint_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue BckbnPay::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |
| **create_webhook_endpoint_request** | [**CreateWebhookEndpointRequest**](CreateWebhookEndpointRequest.md) |  |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

