# SubfiPay::CheckoutTemplatesApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checkout_template**](CheckoutTemplatesApi.md#create_checkout_template) | **POST** /checkout_templates | Create a new checkout template |
| [**create_render_token**](CheckoutTemplatesApi.md#create_render_token) | **POST** /checkout_templates/{id}/token | Create a render token for checkout template |
| [**get_checkout_template**](CheckoutTemplatesApi.md#get_checkout_template) | **GET** /checkout_templates/{id} | Retrieve a checkout template by ID |
| [**list_checkout_templates**](CheckoutTemplatesApi.md#list_checkout_templates) | **GET** /checkout_templates | List all checkout templates |


## create_checkout_template

> <CheckoutTemplateResponse> create_checkout_template(x_api_version, checkout_template_create_request)

Create a new checkout template

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

api_instance = SubfiPay::CheckoutTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
checkout_template_create_request = SubfiPay::CheckoutTemplateCreateRequest.new # CheckoutTemplateCreateRequest | 

begin
  # Create a new checkout template
  result = api_instance.create_checkout_template(x_api_version, checkout_template_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->create_checkout_template: #{e}"
end
```

#### Using the create_checkout_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutTemplateResponse>, Integer, Hash)> create_checkout_template_with_http_info(x_api_version, checkout_template_create_request)

```ruby
begin
  # Create a new checkout template
  data, status_code, headers = api_instance.create_checkout_template_with_http_info(x_api_version, checkout_template_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutTemplateResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->create_checkout_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **checkout_template_create_request** | [**CheckoutTemplateCreateRequest**](CheckoutTemplateCreateRequest.md) |  |  |

### Return type

[**CheckoutTemplateResponse**](CheckoutTemplateResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_render_token

> <TokenResponse> create_render_token(x_api_version, id)

Create a render token for checkout template

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

api_instance = SubfiPay::CheckoutTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Create a render token for checkout template
  result = api_instance.create_render_token(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->create_render_token: #{e}"
end
```

#### Using the create_render_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> create_render_token_with_http_info(x_api_version, id)

```ruby
begin
  # Create a render token for checkout template
  data, status_code, headers = api_instance.create_render_token_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->create_render_token_with_http_info: #{e}"
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


## get_checkout_template

> <CheckoutTemplateResponse> get_checkout_template(x_api_version, id)

Retrieve a checkout template by ID

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

api_instance = SubfiPay::CheckoutTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a checkout template by ID
  result = api_instance.get_checkout_template(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->get_checkout_template: #{e}"
end
```

#### Using the get_checkout_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutTemplateResponse>, Integer, Hash)> get_checkout_template_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a checkout template by ID
  data, status_code, headers = api_instance.get_checkout_template_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutTemplateResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->get_checkout_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**CheckoutTemplateResponse**](CheckoutTemplateResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_checkout_templates

> <ListCheckoutTemplatesResponse> list_checkout_templates(x_api_version, opts)

List all checkout templates

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

api_instance = SubfiPay::CheckoutTemplatesApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  account_id: 'account_id_example' # String | 
}

begin
  # List all checkout templates
  result = api_instance.list_checkout_templates(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->list_checkout_templates: #{e}"
end
```

#### Using the list_checkout_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCheckoutTemplatesResponse>, Integer, Hash)> list_checkout_templates_with_http_info(x_api_version, opts)

```ruby
begin
  # List all checkout templates
  data, status_code, headers = api_instance.list_checkout_templates_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCheckoutTemplatesResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling CheckoutTemplatesApi->list_checkout_templates_with_http_info: #{e}"
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

[**ListCheckoutTemplatesResponse**](ListCheckoutTemplatesResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

