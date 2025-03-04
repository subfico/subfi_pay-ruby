# SubfiPay::WebhookEndpointAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
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

