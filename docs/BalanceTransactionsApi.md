# BckbnPay::BalanceTransactionsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_balance_transactions**](BalanceTransactionsApi.md#list_balance_transactions) | **GET** /balance_transactions | List all balance transactions |


## list_balance_transactions

> <ListBalanceTransactionsResponse> list_balance_transactions(x_api_version, opts)

List all balance transactions

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

api_instance = BckbnPay::BalanceTransactionsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # List all balance transactions
  result = api_instance.list_balance_transactions(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->list_balance_transactions: #{e}"
end
```

#### Using the list_balance_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBalanceTransactionsResponse>, Integer, Hash)> list_balance_transactions_with_http_info(x_api_version, opts)

```ruby
begin
  # List all balance transactions
  data, status_code, headers = api_instance.list_balance_transactions_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBalanceTransactionsResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->list_balance_transactions_with_http_info: #{e}"
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

[**ListBalanceTransactionsResponse**](ListBalanceTransactionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

