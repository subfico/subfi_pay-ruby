# SubfiPay::AccountsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create a new account |
| [**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{id} | Retrieve an account by ID |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /accounts | List all accounts |


## create_account

> <AccountResponse> create_account(x_api_version, account_create_request)

Create a new account

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

api_instance = SubfiPay::AccountsApi.new
x_api_version = 'x_api_version_example' # String | 
account_create_request = SubfiPay::AccountCreateRequest.new # AccountCreateRequest | 

begin
  # Create a new account
  result = api_instance.create_account(x_api_version, account_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> create_account_with_http_info(x_api_version, account_create_request)

```ruby
begin
  # Create a new account
  data, status_code, headers = api_instance.create_account_with_http_info(x_api_version, account_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **account_create_request** | [**AccountCreateRequest**](AccountCreateRequest.md) |  |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account

> <AccountResponse> get_account(x_api_version, id)

Retrieve an account by ID

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

api_instance = SubfiPay::AccountsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve an account by ID
  result = api_instance.get_account(x_api_version, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> get_account_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve an account by ID
  data, status_code, headers = api_instance.get_account_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <ListAccountsResponse> list_accounts(x_api_version, opts)

List all accounts

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

api_instance = SubfiPay::AccountsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all accounts
  result = api_instance.list_accounts(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->list_accounts: #{e}"
end
```

#### Using the list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountsResponse>, Integer, Hash)> list_accounts_with_http_info(x_api_version, opts)

```ruby
begin
  # List all accounts
  data, status_code, headers = api_instance.list_accounts_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling AccountsApi->list_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListAccountsResponse**](ListAccountsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

