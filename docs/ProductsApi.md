# SubfiPay::ProductsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /products | Create a new product |
| [**list_products**](ProductsApi.md#list_products) | **GET** /products | List all products |
| [**update_product**](ProductsApi.md#update_product) | **PATCH** /products/{id} | Update a product by ID |


## create_product

> <ProductResponse> create_product(x_api_version, x_account_id, product_create_request)

Create a new product

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

api_instance = SubfiPay::ProductsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
product_create_request = SubfiPay::ProductCreateRequest.new({product: SubfiPay::ProductAttributes.new({name: 'name_example', description: 'description_example'})}) # ProductCreateRequest | 

begin
  # Create a new product
  result = api_instance.create_product(x_api_version, x_account_id, product_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductResponse>, Integer, Hash)> create_product_with_http_info(x_api_version, x_account_id, product_create_request)

```ruby
begin
  # Create a new product
  data, status_code, headers = api_instance.create_product_with_http_info(x_api_version, x_account_id, product_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **product_create_request** | [**ProductCreateRequest**](ProductCreateRequest.md) |  |  |

### Return type

[**ProductResponse**](ProductResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_products

> <ListProductsResponse> list_products(x_api_version, x_account_id, opts)

List all products

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

api_instance = SubfiPay::ProductsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all products
  result = api_instance.list_products(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductsResponse>, Integer, Hash)> list_products_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all products
  data, status_code, headers = api_instance.list_products_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListProductsResponse**](ListProductsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <ProductResponse> update_product(x_api_version, x_account_id, id, product_update_request)

Update a product by ID

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

api_instance = SubfiPay::ProductsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the product to update
product_update_request = SubfiPay::ProductUpdateRequest.new # ProductUpdateRequest | 

begin
  # Update a product by ID
  result = api_instance.update_product(x_api_version, x_account_id, id, product_update_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductResponse>, Integer, Hash)> update_product_with_http_info(x_api_version, x_account_id, id, product_update_request)

```ruby
begin
  # Update a product by ID
  data, status_code, headers = api_instance.update_product_with_http_info(x_api_version, x_account_id, id, product_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the product to update |  |
| **product_update_request** | [**ProductUpdateRequest**](ProductUpdateRequest.md) |  |  |

### Return type

[**ProductResponse**](ProductResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

