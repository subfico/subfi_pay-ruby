# SubfiPay::RenderTemplatesApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_render_template**](RenderTemplatesApi.md#create_render_template) | **POST** /render_templates | Create a new render template |
| [**create_render_token**](RenderTemplatesApi.md#create_render_token) | **POST** /render_templates/{id}/token | Create a render token for render template |
| [**get_render_template**](RenderTemplatesApi.md#get_render_template) | **GET** /render_templates/{id} | Retrieve a render template by ID |
| [**list_render_templates**](RenderTemplatesApi.md#list_render_templates) | **GET** /render_templates | List all render templates |


## create_render_template

> <RenderTemplateResponse> create_render_template(x_api_version, render_template_create_request)

Create a new render template

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

api_instance = SubfiPay::RenderTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
render_template_create_request = SubfiPay::RenderTemplateCreateRequest.new # RenderTemplateCreateRequest | 

begin
  # Create a new render template
  result = api_instance.create_render_template(x_api_version, render_template_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_template: #{e}"
end
```

#### Using the create_render_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderTemplateResponse>, Integer, Hash)> create_render_template_with_http_info(x_api_version, render_template_create_request)

```ruby
begin
  # Create a new render template
  data, status_code, headers = api_instance.create_render_template_with_http_info(x_api_version, render_template_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderTemplateResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **render_template_create_request** | [**RenderTemplateCreateRequest**](RenderTemplateCreateRequest.md) |  |  |

### Return type

[**RenderTemplateResponse**](RenderTemplateResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_render_token

> <TokenResponse> create_render_token(x_api_version, id)

Create a render token for render template

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

api_instance = SubfiPay::RenderTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Create a render token for render template
  result = api_instance.create_render_token(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_token: #{e}"
end
```

#### Using the create_render_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> create_render_token_with_http_info(x_api_version, id)

```ruby
begin
  # Create a render token for render template
  data, status_code, headers = api_instance.create_render_token_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_render_template

> <RenderTemplateResponse> get_render_template(x_api_version, id)

Retrieve a render template by ID

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

api_instance = SubfiPay::RenderTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a render template by ID
  result = api_instance.get_render_template(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->get_render_template: #{e}"
end
```

#### Using the get_render_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderTemplateResponse>, Integer, Hash)> get_render_template_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a render template by ID
  data, status_code, headers = api_instance.get_render_template_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderTemplateResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->get_render_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**RenderTemplateResponse**](RenderTemplateResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_render_templates

> <ListRenderTemplatesResponse> list_render_templates(x_api_version, opts)

List all render templates

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

api_instance = SubfiPay::RenderTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  account_id: 'account_id_example' # String | 
}

begin
  # List all render templates
  result = api_instance.list_render_templates(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->list_render_templates: #{e}"
end
```

#### Using the list_render_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRenderTemplatesResponse>, Integer, Hash)> list_render_templates_with_http_info(x_api_version, opts)

```ruby
begin
  # List all render templates
  data, status_code, headers = api_instance.list_render_templates_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRenderTemplatesResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RenderTemplatesApi->list_render_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**ListRenderTemplatesResponse**](ListRenderTemplatesResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

