# SubfiPay::ChargesApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_charge**](ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge |
| [**list_charges**](ChargesApi.md#list_charges) | **GET** /charges | List all charges |


## get_charge

> <ChargeResponse> get_charge(x_api_version, x_account_id, id)

Retrieve a charge

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

api_instance = SubfiPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a charge
  result = api_instance.get_charge(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge: #{e}"
end
```

#### Using the get_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> get_charge_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_charge_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_charges

> <ListChargesResponse> list_charges(x_api_version, x_account_id, opts)

List all charges

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

api_instance = SubfiPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  payment_intent_id: 'payment_intent_id_example' # String | Filter results by payment intent ID.
}

begin
  # List all charges
  result = api_instance.list_charges(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges: #{e}"
end
```

#### Using the list_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChargesResponse>, Integer, Hash)> list_charges_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all charges
  data, status_code, headers = api_instance.list_charges_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChargesResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **payment_intent_id** | **String** | Filter results by payment intent ID. | [optional] |

### Return type

[**ListChargesResponse**](ListChargesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

