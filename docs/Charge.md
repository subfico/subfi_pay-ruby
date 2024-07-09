# BckbnPay::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **payment_method** | [**ChargePaymentMethod**](ChargePaymentMethod.md) |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::Charge.new(
  id: null,
  amount: null,
  description: null,
  sub_merchant_id: null,
  payment_method: null,
  state: null,
  created_at: null
)
```

