# BckbnPay::Refund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::Refund.new(
  id: null,
  amount: null,
  charge_id: null,
  description: null,
  failure_reason: null,
  state: null,
  created_at: null,
  sub_merchant_id: null
)
```

