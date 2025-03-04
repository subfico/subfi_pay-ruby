# SubfiPay::WebhookEndpointAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::WebhookEndpointAttributes.new(
  event: null,
  metadata: null,
  enabled: null,
  secret: null,
  url: null
)
```

