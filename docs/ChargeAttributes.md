# BckbnPay::ChargeAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **payment_method_id** | **String** |  |  |
| **sub_merchant_id** | **String** |  | [optional] |
| **immediate_capture** | **Boolean** | Determines whether the charge should be captured immediately | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::ChargeAttributes.new(
  amount: null,
  description: null,
  payment_method_id: null,
  sub_merchant_id: null,
  immediate_capture: null
)
```

