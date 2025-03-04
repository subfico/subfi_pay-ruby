# SubfiPay::PayoutsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_create_payouts**](PayoutsApi.md#bulk_create_payouts) | **POST** /payouts/bulk_create | Bulk create payouts |
| [**create_payout**](PayoutsApi.md#create_payout) | **POST** /payouts | Create a payout |
| [**get_payout**](PayoutsApi.md#get_payout) | **GET** /payouts/{id} | Retrieve a payout by ID |
| [**list_payouts**](PayoutsApi.md#list_payouts) | **GET** /payouts | List all payouts |


## bulk_create_payouts

> <BulkCreatePayoutsResponse> bulk_create_payouts(x_api_version, x_account_id, payout_bulk_create_request)

Bulk create payouts

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

api_instance = SubfiPay::PayoutsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
payout_bulk_create_request = SubfiPay::PayoutBulkCreateRequest.new # PayoutBulkCreateRequest | 

begin
  # Bulk create payouts
  result = api_instance.bulk_create_payouts(x_api_version, x_account_id, payout_bulk_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->bulk_create_payouts: #{e}"
end
```

#### Using the bulk_create_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkCreatePayoutsResponse>, Integer, Hash)> bulk_create_payouts_with_http_info(x_api_version, x_account_id, payout_bulk_create_request)

```ruby
begin
  # Bulk create payouts
  data, status_code, headers = api_instance.bulk_create_payouts_with_http_info(x_api_version, x_account_id, payout_bulk_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkCreatePayoutsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->bulk_create_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **payout_bulk_create_request** | [**PayoutBulkCreateRequest**](PayoutBulkCreateRequest.md) |  |  |

### Return type

[**BulkCreatePayoutsResponse**](BulkCreatePayoutsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payout

> <PayoutResponse> create_payout(x_api_version, x_account_id, payout_create_request, opts)

Create a payout

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

api_instance = SubfiPay::PayoutsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
payout_create_request = SubfiPay::PayoutCreateRequest.new # PayoutCreateRequest | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a payout
  result = api_instance.create_payout(x_api_version, x_account_id, payout_create_request, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->create_payout: #{e}"
end
```

#### Using the create_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutResponse>, Integer, Hash)> create_payout_with_http_info(x_api_version, x_account_id, payout_create_request, opts)

```ruby
begin
  # Create a payout
  data, status_code, headers = api_instance.create_payout_with_http_info(x_api_version, x_account_id, payout_create_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->create_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **payout_create_request** | [**PayoutCreateRequest**](PayoutCreateRequest.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**PayoutResponse**](PayoutResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payout

> <PayoutResponse> get_payout(x_api_version, x_account_id, id)

Retrieve a payout by ID

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

api_instance = SubfiPay::PayoutsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a payout by ID
  result = api_instance.get_payout(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->get_payout: #{e}"
end
```

#### Using the get_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutResponse>, Integer, Hash)> get_payout_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a payout by ID
  data, status_code, headers = api_instance.get_payout_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->get_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PayoutResponse**](PayoutResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payouts

> <ListPayoutsResponse> list_payouts(x_api_version, x_account_id, opts)

List all payouts

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

api_instance = SubfiPay::PayoutsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  external_account_id: 'external_account_id_example', # String | The external account ID to filter by
  state: 'pending' # String | The payout state to filter by
}

begin
  # List all payouts
  result = api_instance.list_payouts(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts: #{e}"
end
```

#### Using the list_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPayoutsResponse>, Integer, Hash)> list_payouts_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all payouts
  data, status_code, headers = api_instance.list_payouts_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPayoutsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **external_account_id** | **String** | The external account ID to filter by | [optional] |
| **state** | **String** | The payout state to filter by | [optional] |

### Return type

[**ListPayoutsResponse**](ListPayoutsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

