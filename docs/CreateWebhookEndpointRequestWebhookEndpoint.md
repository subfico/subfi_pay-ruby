# SubfiPay::CreateWebhookEndpointRequestWebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CreateWebhookEndpointRequestWebhookEndpoint.new(
  event: null,
  metadata: null,
  enabled: null,
  secret: null,
  url: null,
  connected_account_id: null
)
```

