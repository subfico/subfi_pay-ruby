# BckbnPay::WebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **url** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::WebhookEndpoint.new(
  id: null,
  event: null,
  metadata: null,
  url: null,
  enabled: null,
  merchant_id: null,
  sub_merchant_id: null,
  created_at: null,
  updated_at: null
)
```

