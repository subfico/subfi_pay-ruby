# SubfiPay::SubscriptionsApi

All URIs are relative to *https://pay-sandbox.subfi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_subscription**](SubscriptionsApi.md#cancel_subscription) | **PUT** /subscriptions/{id}/cancel | Cancel a subscription by ID |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | Retrieve a subscription by ID |
| [**list_subscriptions**](SubscriptionsApi.md#list_subscriptions) | **GET** /subscriptions | List all subscriptions |


## cancel_subscription

> <SubscriptionResponse> cancel_subscription(x_api_version, x_account_id, id)

Cancel a subscription by ID

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

api_instance = SubfiPay::SubscriptionsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
id = 'id_example' # String | The ID of the subscription to cancel

begin
  # Cancel a subscription by ID
  result = api_instance.cancel_subscription(x_api_version, x_account_id, id)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription: #{e}"
end
```

#### Using the cancel_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> cancel_subscription_with_http_info(x_api_version, x_account_id, id)

```ruby
begin
  # Cancel a subscription by ID
  data, status_code, headers = api_instance.cancel_subscription_with_http_info(x_api_version, x_account_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **x_account_id** | **String** |  |  |
| **id** | **String** | The ID of the subscription to cancel |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_subscription

> <SubscriptionResponse> create_subscription(x_api_version, x_account_id, subscription_create_request)

Create a new subscription

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

[X-Api-Key](../README.md#X-Api-Key)

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
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'
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

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subscriptions

> <ListSubscriptionsResponse> list_subscriptions(x_api_version, x_account_id, opts)

List all subscriptions

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

api_instance = SubfiPay::SubscriptionsApi.new
x_api_version = 'x_api_version_example' # String | 
x_account_id = 'x_account_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all subscriptions
  result = api_instance.list_subscriptions(x_api_version, x_account_id, opts)
  p result
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->list_subscriptions: #{e}"
end
```

#### Using the list_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSubscriptionsResponse>, Integer, Hash)> list_subscriptions_with_http_info(x_api_version, x_account_id, opts)

```ruby
begin
  # List all subscriptions
  data, status_code, headers = api_instance.list_subscriptions_with_http_info(x_api_version, x_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSubscriptionsResponse>
rescue SubfiPay::ApiError => e
  puts "Error when calling SubscriptionsApi->list_subscriptions_with_http_info: #{e}"
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

[**ListSubscriptionsResponse**](ListSubscriptionsResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

