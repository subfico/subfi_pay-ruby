# BckbnPay::MerchantConfigurationsApi

All URIs are relative to *https://pay-sandbox.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_merchant_configurations**](MerchantConfigurationsApi.md#create_merchant_configurations) | **POST** /merchant_configurations | Create merchant configurations |
| [**get_merchant_configurations**](MerchantConfigurationsApi.md#get_merchant_configurations) | **GET** /merchant_configurations | Retrieve merchant configurations |


## create_merchant_configurations

> <MerchantConfigurationResponse> create_merchant_configurations(x_api_version, create_merchant_configuration_request)

Create merchant configurations

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

api_instance = BckbnPay::MerchantConfigurationsApi.new
x_api_version = 'x_api_version_example' # String | 
create_merchant_configuration_request = BckbnPay::CreateMerchantConfigurationRequest.new # CreateMerchantConfigurationRequest | 

begin
  # Create merchant configurations
  result = api_instance.create_merchant_configurations(x_api_version, create_merchant_configuration_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling MerchantConfigurationsApi->create_merchant_configurations: #{e}"
end
```

#### Using the create_merchant_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantConfigurationResponse>, Integer, Hash)> create_merchant_configurations_with_http_info(x_api_version, create_merchant_configuration_request)

```ruby
begin
  # Create merchant configurations
  data, status_code, headers = api_instance.create_merchant_configurations_with_http_info(x_api_version, create_merchant_configuration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantConfigurationResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling MerchantConfigurationsApi->create_merchant_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **create_merchant_configuration_request** | [**CreateMerchantConfigurationRequest**](CreateMerchantConfigurationRequest.md) |  |  |

### Return type

[**MerchantConfigurationResponse**](MerchantConfigurationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_merchant_configurations

> <MerchantConfigurationResponse> get_merchant_configurations(x_api_version)

Retrieve merchant configurations

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

api_instance = BckbnPay::MerchantConfigurationsApi.new
x_api_version = 'x_api_version_example' # String | 

begin
  # Retrieve merchant configurations
  result = api_instance.get_merchant_configurations(x_api_version)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling MerchantConfigurationsApi->get_merchant_configurations: #{e}"
end
```

#### Using the get_merchant_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantConfigurationResponse>, Integer, Hash)> get_merchant_configurations_with_http_info(x_api_version)

```ruby
begin
  # Retrieve merchant configurations
  data, status_code, headers = api_instance.get_merchant_configurations_with_http_info(x_api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantConfigurationResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling MerchantConfigurationsApi->get_merchant_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |

### Return type

[**MerchantConfigurationResponse**](MerchantConfigurationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

