# BckbnPay::SubMerchantsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sub_merchant**](SubMerchantsApi.md#create_sub_merchant) | **POST** /sub_merchants | Create a sub_merchant |
| [**get_sub_merchant**](SubMerchantsApi.md#get_sub_merchant) | **GET** /sub_merchants/{id} | Retrieve a sub_merchant |


## create_sub_merchant

> <SubMerchantResponse> create_sub_merchant(x_api_version, sub_merchant_attributes, opts)

Create a sub_merchant

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

  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::SubMerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
sub_merchant_attributes = BckbnPay::SubMerchantAttributes.new({name: 'name_example', worldpay_merchant_id: 'worldpay_merchant_id_example'}) # SubMerchantAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a sub_merchant
  result = api_instance.create_sub_merchant(x_api_version, sub_merchant_attributes, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->create_sub_merchant: #{e}"
end
```

#### Using the create_sub_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubMerchantResponse>, Integer, Hash)> create_sub_merchant_with_http_info(x_api_version, sub_merchant_attributes, opts)

```ruby
begin
  # Create a sub_merchant
  data, status_code, headers = api_instance.create_sub_merchant_with_http_info(x_api_version, sub_merchant_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubMerchantResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->create_sub_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **sub_merchant_attributes** | [**SubMerchantAttributes**](SubMerchantAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**SubMerchantResponse**](SubMerchantResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sub_merchant

> <SubMerchantResponse> get_sub_merchant(x_api_version, id)

Retrieve a sub_merchant

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

  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::SubMerchantsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a sub_merchant
  result = api_instance.get_sub_merchant(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->get_sub_merchant: #{e}"
end
```

#### Using the get_sub_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubMerchantResponse>, Integer, Hash)> get_sub_merchant_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a sub_merchant
  data, status_code, headers = api_instance.get_sub_merchant_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubMerchantResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling SubMerchantsApi->get_sub_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**SubMerchantResponse**](SubMerchantResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

