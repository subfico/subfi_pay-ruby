# SubfiPay::ExternalAccountsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_account**](ExternalAccountsApi.md#create_external_account) | **POST** /external_accounts | Create an external account |
| [**get_external_account**](ExternalAccountsApi.md#get_external_account) | **GET** /external_accounts/{id} | Retrieve an external account by ID |
| [**list_external_accounts**](ExternalAccountsApi.md#list_external_accounts) | **GET** /external_accounts | List all external accounts |


## create_external_account

> <ExternalAccountResponse> create_external_account(x_api_version, x_account_id, external_account_create_request)

Create an external account

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

api_instance = SubfiPay::ExternalAccountsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
external_account_create_request = SubfiPay::ExternalAccountCreateRequest.new # ExternalAccountCreateRequest | 

begin
  # Create an external account
  result = api_instance.create_external_account(x_api_version, x_account_id, external_account_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->create_external_account: #{e}"
end
```

#### Using the create_external_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalAccountResponse>, Integer, Hash)> create_external_account_with_http_info(x_api_version, x_account_id, external_account_create_request)

```ruby
begin
  # Create an external account
  data, status_code, headers = api_instance.create_external_account_with_http_info(x_api_version, x_account_id, external_account_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalAccountResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->create_external_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **external_account_create_request** | [**ExternalAccountCreateRequest**](ExternalAccountCreateRequest.md) |  |  |

### Return type

[**ExternalAccountResponse**](ExternalAccountResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_account

> <ExternalAccountResponse> get_external_account(x_api_version, x_account_id, id)

Retrieve an external account by ID

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

api_instance = SubfiPay::ExternalAccountsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve an external account by ID
  result = api_instance.get_external_account(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->get_external_account: #{e}"
end
```

#### Using the get_external_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalAccountResponse>, Integer, Hash)> get_external_account_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve an external account by ID
  data, status_code, headers = api_instance.get_external_account_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalAccountResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->get_external_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ExternalAccountResponse**](ExternalAccountResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_external_accounts

> <ListExternalAccountsResponse> list_external_accounts(x_api_version, x_account_id, opts)

List all external accounts

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

api_instance = SubfiPay::ExternalAccountsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all external accounts
  result = api_instance.list_external_accounts(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->list_external_accounts: #{e}"
end
```

#### Using the list_external_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExternalAccountsResponse>, Integer, Hash)> list_external_accounts_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all external accounts
  data, status_code, headers = api_instance.list_external_accounts_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExternalAccountsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling ExternalAccountsApi->list_external_accounts_with_http_info: #{e}"
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

[**ListExternalAccountsResponse**](ListExternalAccountsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

