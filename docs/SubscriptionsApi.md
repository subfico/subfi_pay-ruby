# SubfiPay::SubscriptionsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | Retrieve a subscription by ID |


## create_subscription

> <SubscriptionResponse> create_subscription(x_api_version, x_account_id, subscription_create_request)

Create a new subscription

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

api_instance = SubfiPay::SubscriptionsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
subscription_create_request = SubfiPay::SubscriptionCreateRequest.new # SubscriptionCreateRequest | 

begin
  # Create a new subscription
  result = api_instance.create_subscription(x_api_version, x_account_id, subscription_create_request)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> create_subscription_with_http_info(x_api_version, x_account_id, subscription_create_request)

```ruby
begin
  # Create a new subscription
  data, status_code, headers = api_instance.create_subscription_with_http_info(x_api_version, x_account_id, subscription_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **subscription_create_request** | [**SubscriptionCreateRequest**](SubscriptionCreateRequest.md) |  |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_subscription

> <SubscriptionResponse> get_subscription(x_api_version, x_account_id, id)

Retrieve a subscription by ID

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

api_instance = SubfiPay::SubscriptionsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the subscription to retrieve

begin
  # Retrieve a subscription by ID
  result = api_instance.get_subscription(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> get_subscription_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Retrieve a subscription by ID
  data, status_code, headers = api_instance.get_subscription_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the subscription to retrieve |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

