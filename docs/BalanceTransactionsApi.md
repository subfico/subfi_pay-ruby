# SubfiPay::BalanceTransactionsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_balance_transactions**](BalanceTransactionsApi.md#list_balance_transactions) | **GET** /balance_transactions | List all balance transactions |


## list_balance_transactions

> <ListBalanceTransactionsResponse> list_balance_transactions(x_api_version, x_account_id, opts)

List all balance transactions

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

api_instance = SubfiPay::BalanceTransactionsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all balance transactions
  result = api_instance.list_balance_transactions(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->list_balance_transactions: #{e}"
end
```

#### Using the list_balance_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBalanceTransactionsResponse>, Integer, Hash)> list_balance_transactions_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all balance transactions
  data, status_code, headers = api_instance.list_balance_transactions_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBalanceTransactionsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->list_balance_transactions_with_http_info: #{e}"
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

[**ListBalanceTransactionsResponse**](ListBalanceTransactionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

