# SubfiPay::WebhookEndpointResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **secret** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::WebhookEndpointResponse.new(
  id: null,
  event: null,
  metadata: null,
  secret: null,
  url: null,
  active: null,
  created_at: null,
  updated_at: null
)
```

