# SubfiPay::FraudRulesApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fraud_rule**](FraudRulesApi.md#create_fraud_rule) | **POST** /fraud_rules | Create a Fraud Rule |
| [**delete_fraud_rule**](FraudRulesApi.md#delete_fraud_rule) | **DELETE** /fraud_rules/{id} | Delete a Fraud Rule by ID |
| [**list_fraud_rules**](FraudRulesApi.md#list_fraud_rules) | **GET** /fraud_rules | List all fraud rules |


## create_fraud_rule

> <FraudRuleResponse> create_fraud_rule(x_api_version, fraud_rule_create_request)

Create a Fraud Rule

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

api_instance = SubfiPay::FraudRulesApi.new
x_api_version = 'x_api_version_example' # String | 
fraud_rule_create_request = SubfiPay::FraudRuleCreateRequest.new # FraudRuleCreateRequest | 

begin
  # Create a Fraud Rule
  result = api_instance.create_fraud_rule(x_api_version, fraud_rule_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->create_fraud_rule: #{e}"
end
```

#### Using the create_fraud_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FraudRuleResponse>, Integer, Hash)> create_fraud_rule_with_http_info(x_api_version, fraud_rule_create_request)

```ruby
begin
  # Create a Fraud Rule
  data, status_code, headers = api_instance.create_fraud_rule_with_http_info(x_api_version, fraud_rule_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FraudRuleResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->create_fraud_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **fraud_rule_create_request** | [**FraudRuleCreateRequest**](FraudRuleCreateRequest.md) |  |  |

### Return type

[**FraudRuleResponse**](FraudRuleResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_fraud_rule

> delete_fraud_rule(x_api_version, id)

Delete a Fraud Rule by ID

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

api_instance = SubfiPay::FraudRulesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Delete a Fraud Rule by ID
  api_instance.delete_fraud_rule(x_api_version, id)
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->delete_fraud_rule: #{e}"
end
```

#### Using the delete_fraud_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fraud_rule_with_http_info(x_api_version, id)

```ruby
begin
  # Delete a Fraud Rule by ID
  data, status_code, headers = api_instance.delete_fraud_rule_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->delete_fraud_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_fraud_rules

> <ListFraudRulesResponse> list_fraud_rules(x_api_version, opts)

List all fraud rules

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

api_instance = SubfiPay::FraudRulesApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all fraud rules
  result = api_instance.list_fraud_rules(x_api_version, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->list_fraud_rules: #{e}"
end
```

#### Using the list_fraud_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFraudRulesResponse>, Integer, Hash)> list_fraud_rules_with_http_info(x_api_version, opts)

```ruby
begin
  # List all fraud rules
  data, status_code, headers = api_instance.list_fraud_rules_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFraudRulesResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling FraudRulesApi->list_fraud_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListFraudRulesResponse**](ListFraudRulesResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

