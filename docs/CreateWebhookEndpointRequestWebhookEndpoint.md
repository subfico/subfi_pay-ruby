# BckbnPay::CreateWebhookEndpointRequestWebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::CreateWebhookEndpointRequestWebhookEndpoint.new(
  event: null,
  metadata: null,
  enabled: null,
  secret: null,
  url: null,
  sub_merchant_id: null
)
```

