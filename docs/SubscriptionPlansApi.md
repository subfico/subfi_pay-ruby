# SubfiPay::SubscriptionPlansApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription_plan**](SubscriptionPlansApi.md#create_subscription_plan) | **POST** /subscription_plans | Create a new subscription plan |
| [**get_subscription_plan**](SubscriptionPlansApi.md#get_subscription_plan) | **GET** /subscription_plans/{id} | Retrieve a subscription plan by ID |
| [**list_subscription_plans**](SubscriptionPlansApi.md#list_subscription_plans) | **GET** /subscription_plans | List all subscription plans |


## create_subscription_plan

> <SubscriptionPlanResponse> create_subscription_plan(x_api_version, x_account_id, subscription_plan_create_request)

Create a new subscription plan

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

api_instance = SubfiPay::SubscriptionPlansApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
subscription_plan_create_request = SubfiPay::SubscriptionPlanCreateRequest.new # SubscriptionPlanCreateRequest | 

begin
  # Create a new subscription plan
  result = api_instance.create_subscription_plan(x_api_version, x_account_id, subscription_plan_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->create_subscription_plan: #{e}"
end
```

#### Using the create_subscription_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionPlanResponse>, Integer, Hash)> create_subscription_plan_with_http_info(x_api_version, x_account_id, subscription_plan_create_request)

```ruby
begin
  # Create a new subscription plan
  data, status_code, headers = api_instance.create_subscription_plan_with_http_info(x_api_version, x_account_id, subscription_plan_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionPlanResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->create_subscription_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **subscription_plan_create_request** | [**SubscriptionPlanCreateRequest**](SubscriptionPlanCreateRequest.md) |  |  |

### Return type

[**SubscriptionPlanResponse**](SubscriptionPlanResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_subscription_plan

> <SubscriptionResponse> get_subscription_plan(x_api_version, x_account_id, id)

Retrieve a subscription plan by ID

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

api_instance = SubfiPay::SubscriptionPlansApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the subscription plan to retrieve

begin
  # Retrieve a subscription plan by ID
  result = api_instance.get_subscription_plan(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->get_subscription_plan: #{e}"
end
```

#### Using the get_subscription_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> get_subscription_plan_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a subscription plan by ID
  data, status_code, headers = api_instance.get_subscription_plan_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->get_subscription_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the subscription plan to retrieve |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subscription_plans

> <ListSubscriptionPlansResponse> list_subscription_plans(x_api_version, x_account_id, opts)

List all subscription plans

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

api_instance = SubfiPay::SubscriptionPlansApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all subscription plans
  result = api_instance.list_subscription_plans(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->list_subscription_plans: #{e}"
end
```

#### Using the list_subscription_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSubscriptionPlansResponse>, Integer, Hash)> list_subscription_plans_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all subscription plans
  data, status_code, headers = api_instance.list_subscription_plans_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSubscriptionPlansResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionPlansApi->list_subscription_plans_with_http_info: #{e}"
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

[**ListSubscriptionPlansResponse**](ListSubscriptionPlansResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

