# BckbnPay::RefundsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_refund**](RefundsApi.md#cancel_refund) | **PUT** /refunds/{id}/cancel | Cancel a refund |
| [**create_refund**](RefundsApi.md#create_refund) | **POST** /refunds | Create a refund |
| [**get_refund**](RefundsApi.md#get_refund) | **GET** /refunds/{id} | Get a refund by ID |
| [**list_refunds**](RefundsApi.md#list_refunds) | **GET** /refunds | List refunds for a Charge |


## cancel_refund

> <RefundResponse> cancel_refund(x_api_version, id)

Cancel a refund

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the refund to cancel.

begin
  # Cancel a refund
  result = api_instance.cancel_refund(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund: #{e}"
end
```

#### Using the cancel_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> cancel_refund_with_http_info(x_api_version, id)

```ruby
begin
  # Cancel a refund
  data, status_code, headers = api_instance.cancel_refund_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the refund to cancel. |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_refund

> <RefundResponse> create_refund(x_api_version, refund_attributes, opts)

Create a refund

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
refund_attributes = BckbnPay::RefundAttributes.new({charge_id: 'charge_id_example'}) # RefundAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a refund
  result = api_instance.create_refund(x_api_version, refund_attributes, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund: #{e}"
end
```

#### Using the create_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> create_refund_with_http_info(x_api_version, refund_attributes, opts)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_refund_with_http_info(x_api_version, refund_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **refund_attributes** | [**RefundAttributes**](RefundAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_refund

> <RefundResponse> get_refund(x_api_version, id, opts)

Get a refund by ID

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the refund to retrieve.
opts = {
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # Get a refund by ID
  result = api_instance.get_refund(x_api_version, id, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->get_refund: #{e}"
end
```

#### Using the get_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> get_refund_with_http_info(x_api_version, id, opts)

```ruby
begin
  # Get a refund by ID
  data, status_code, headers = api_instance.get_refund_with_http_info(x_api_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->get_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the refund to retrieve. |  |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_refunds

> <ListRefundsResponse> list_refunds(x_api_version, charge_id)

List refunds for a Charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
charge_id = 'charge_id_example' # String | The ID of the charge to which this refund belongs.

begin
  # List refunds for a Charge
  result = api_instance.list_refunds(x_api_version, charge_id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->list_refunds: #{e}"
end
```

#### Using the list_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRefundsResponse>, Integer, Hash)> list_refunds_with_http_info(x_api_version, charge_id)

```ruby
begin
  # List refunds for a Charge
  data, status_code, headers = api_instance.list_refunds_with_http_info(x_api_version, charge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRefundsResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling RefundsApi->list_refunds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **charge_id** | **String** | The ID of the charge to which this refund belongs. |  |

### Return type

[**ListRefundsResponse**](ListRefundsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

