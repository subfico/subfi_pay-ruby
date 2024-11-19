# BckbnPay::EventsApi

All URIs are relative to *https://pay-sandbox.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_event**](EventsApi.md#get_event) | **GET** /events/{id} | Retrieve a single event by ID |
| [**list_events**](EventsApi.md#list_events) | **GET** /events | List all events |


## get_event

> <Event> get_event(x_api_version, id)

Retrieve a single event by ID

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
end

api_instance = BckbnPay::EventsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a single event by ID
  result = api_instance.get_event(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> get_event_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a single event by ID
  data, status_code, headers = api_instance.get_event_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue BckbnPay::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**Event**](Event.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <ListEventsResponse> list_events(x_api_version, opts)

List all events

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
end

api_instance = BckbnPay::EventsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all events
  result = api_instance.list_events(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling EventsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventsResponse>, Integer, Hash)> list_events_with_http_info(x_api_version, opts)

```ruby
begin
  # List all events
  data, status_code, headers = api_instance.list_events_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventsResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling EventsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListEventsResponse**](ListEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

