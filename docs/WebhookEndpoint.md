# SubfiPay::WebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **url** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::WebhookEndpoint.new(
  id: null,
  event: null,
  metadata: null,
  url: null,
  enabled: null,
  account_id: null,
  connected_account_id: null,
  created_at: null,
  updated_at: null
)
```

