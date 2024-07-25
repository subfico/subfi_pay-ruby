# BckbnPay::BalanceTransactionsApi

All URIs are relative to *https://pay.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**balance_transactions_get**](BalanceTransactionsApi.md#balance_transactions_get) | **GET** /balance_transactions | List all balance transactions |


## balance_transactions_get

> <BalanceTransactionsGet200Response> balance_transactions_get(authorization, x_api_version, content_type)

List all balance transactions

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BckbnPay::BalanceTransactionsApi.new
authorization = 'Bearer TOKEN' # String | 
x_api_version = 'x_api_version_example' # String | 
content_type = 'application/json' # String | 

begin
  # List all balance transactions
  result = api_instance.balance_transactions_get(authorization, x_api_version, content_type)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->balance_transactions_get: #{e}"
end
```

#### Using the balance_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceTransactionsGet200Response>, Integer, Hash)> balance_transactions_get_with_http_info(authorization, x_api_version, content_type)

```ruby
begin
  # List all balance transactions
  data, status_code, headers = api_instance.balance_transactions_get_with_http_info(authorization, x_api_version, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceTransactionsGet200Response>
rescue BckbnPay::ApiError => e
  puts "Error when calling BalanceTransactionsApi->balance_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** |  |  |
| **x_api_version** | **String** |  |  |
| **content_type** | **String** |  |  |

### Return type

[**BalanceTransactionsGet200Response**](BalanceTransactionsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

