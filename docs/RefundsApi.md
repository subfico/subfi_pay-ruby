# SubfiPay::RefundsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_refund**](RefundsApi.md#cancel_refund) | **PUT** /refunds/{id}/cancel | Cancel a refund |
| [**create_refund**](RefundsApi.md#create_refund) | **POST** /refunds | Create a refund |
| [**get_refund**](RefundsApi.md#get_refund) | **GET** /refunds/{id} | Retrieve a refund by ID |
| [**list_refunds**](RefundsApi.md#list_refunds) | **GET** /refunds | List all refunds |


## cancel_refund

> <RefundResponse> cancel_refund(x_api_version, x_account_id, id)

Cancel a refund

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

api_instance = SubfiPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the refund to cancel.

begin
  # Cancel a refund
  result = api_instance.cancel_refund(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund: #{e}"
end
```

#### Using the cancel_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> cancel_refund_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Cancel a refund
  data, status_code, headers = api_instance.cancel_refund_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the refund to cancel. |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_refund

> <RefundResponse> create_refund(x_api_version, x_account_id, refund_attributes, opts)

Create a refund

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

api_instance = SubfiPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
refund_attributes = SubfiPay::RefundAttributes.new({parent_transaction_id: 'parent_transaction_id_example'}) # RefundAttributes | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a refund
  result = api_instance.create_refund(x_api_version, x_account_id, refund_attributes, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund: #{e}"
end
```

#### Using the create_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> create_refund_with_http_info(x_api_version, x_account_id, refund_attributes, opts)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_refund_with_http_info(x_api_version, x_account_id, refund_attributes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->create_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **refund_attributes** | [**RefundAttributes**](RefundAttributes.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_refund

> <RefundResponse> get_refund(x_api_version, x_account_id, id)

Retrieve a refund by ID

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

api_instance = SubfiPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the refund to retrieve

begin
  # Retrieve a refund by ID
  result = api_instance.get_refund(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->get_refund: #{e}"
end
```

#### Using the get_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> get_refund_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a refund by ID
  data, status_code, headers = api_instance.get_refund_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->get_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the refund to retrieve |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_refunds

> <ListRefundsResponse> list_refunds(x_api_version, x_account_id, customer_id, opts)

List all refunds

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

api_instance = SubfiPay::RefundsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
customer_id = 'customer_id_example' # String | The ID of the customer to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  parent_transaction_id: 'parent_transaction_id_example' # String | The ID of the original transaction to filter by
}

begin
  # List all refunds
  result = api_instance.list_refunds(x_api_version, x_account_id, customer_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->list_refunds: #{e}"
end
```

#### Using the list_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRefundsResponse>, Integer, Hash)> list_refunds_with_http_info(x_api_version, x_account_id, customer_id, opts)

```ruby
begin
  # List all refunds
  data, status_code, headers = api_instance.list_refunds_with_http_info(x_api_version, x_account_id, customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRefundsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling RefundsApi->list_refunds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **customer_id** | **String** | The ID of the customer to filter by |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **parent_transaction_id** | **String** | The ID of the original transaction to filter by | [optional] |

### Return type

[**ListRefundsResponse**](ListRefundsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

