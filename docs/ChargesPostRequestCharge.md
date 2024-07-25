# BckbnPay::ChargesPostRequestCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::ChargesPostRequestCharge.new(
  amount: null,
  currency: null,
  description: null,
  payment_method_id: null,
  sub_merchant_id: null
)
```

