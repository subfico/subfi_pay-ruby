# BckbnPay::ChargesApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capture_charge**](ChargesApi.md#capture_charge) | **PUT** /charges/{id}/capture | Capture a charge |
| [**create_charge**](ChargesApi.md#create_charge) | **POST** /charges | Create a charge |
| [**get_charge**](ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge |
| [**list_charges**](ChargesApi.md#list_charges) | **GET** /charges | List all charges |


## capture_charge

> <ChargeResponse> capture_charge(x_api_version, id)

Capture a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Capture a charge
  result = api_instance.capture_charge(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->capture_charge: #{e}"
end
```

#### Using the capture_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> capture_charge_with_http_info(x_api_version, id)

```ruby
begin
  # Capture a charge
  data, status_code, headers = api_instance.capture_charge_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->capture_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_charge

> <ChargeResponse> create_charge(x_api_version, charge_attributes, opts)

Create a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
charge_attributes = BckbnPay::ChargeAttributes.new({amount: 37, payment_method_id: 'payment_method_id_example'}) # ChargeAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a charge
  result = api_instance.create_charge(x_api_version, charge_attributes, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->create_charge: #{e}"
end
```

#### Using the create_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> create_charge_with_http_info(x_api_version, charge_attributes, opts)

```ruby
begin
  # Create a charge
  data, status_code, headers = api_instance.create_charge_with_http_info(x_api_version, charge_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->create_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **charge_attributes** | [**ChargeAttributes**](ChargeAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_charge

> <ChargeResponse> get_charge(x_api_version, id, opts)

Retrieve a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 
opts = {
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # Retrieve a charge
  result = api_instance.get_charge(x_api_version, id, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge: #{e}"
end
```

#### Using the get_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> get_charge_with_http_info(x_api_version, id, opts)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_charge_with_http_info(x_api_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_charges

> <ListChargesResponse> list_charges(x_api_version, opts)

List all charges

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # List all charges
  result = api_instance.list_charges(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges: #{e}"
end
```

#### Using the list_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChargesResponse>, Integer, Hash)> list_charges_with_http_info(x_api_version, opts)

```ruby
begin
  # List all charges
  data, status_code, headers = api_instance.list_charges_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChargesResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**ListChargesResponse**](ListChargesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

