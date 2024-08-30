# BckbnPay::RefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::RefundResponse.new(
  id: null,
  failure_reason: null,
  state: null,
  created_at: null,
  sub_merchant_id: null,
  amount: null,
  charge_id: null
)
```

