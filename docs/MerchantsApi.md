# SubfiPay::MerchantsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_merchant**](MerchantsApi.md#create_merchant) | **POST** /merchants | Create a new merchant |
| [**get_merchant**](MerchantsApi.md#get_merchant) | **GET** /merchants/{id} | Retrieve a merchant by ID |
| [**list_merchants**](MerchantsApi.md#list_merchants) | **GET** /merchants | List all merchants |


## create_merchant

> <MerchantResponse> create_merchant(x_api_version, merchant_create_request)

Create a new merchant

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

api_instance = SubfiPay::MerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
merchant_create_request = SubfiPay::MerchantCreateRequest.new # MerchantCreateRequest | 

begin
  # Create a new merchant
  result = api_instance.create_merchant(x_api_version, merchant_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->create_merchant: #{e}"
end
```

#### Using the create_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantResponse>, Integer, Hash)> create_merchant_with_http_info(x_api_version, merchant_create_request)

```ruby
begin
  # Create a new merchant
  data, status_code, headers = api_instance.create_merchant_with_http_info(x_api_version, merchant_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->create_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **merchant_create_request** | [**MerchantCreateRequest**](MerchantCreateRequest.md) |  |  |

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_merchant

> <MerchantResponse> get_merchant(x_api_version, id)

Retrieve a merchant by ID

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

api_instance = SubfiPay::MerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the merchant to retrieve

begin
  # Retrieve a merchant by ID
  result = api_instance.get_merchant(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->get_merchant: #{e}"
end
```

#### Using the get_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantResponse>, Integer, Hash)> get_merchant_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a merchant by ID
  data, status_code, headers = api_instance.get_merchant_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->get_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the merchant to retrieve |  |

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_merchants

> <ListMerchantsResponse> list_merchants(x_api_version, opts)

List all merchants

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

api_instance = SubfiPay::MerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all merchants
  result = api_instance.list_merchants(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants: #{e}"
end
```

#### Using the list_merchants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMerchantsResponse>, Integer, Hash)> list_merchants_with_http_info(x_api_version, opts)

```ruby
begin
  # List all merchants
  data, status_code, headers = api_instance.list_merchants_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMerchantsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListMerchantsResponse**](ListMerchantsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

