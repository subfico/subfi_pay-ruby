# BckbnPay::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **captured_at** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **payment_method** | [**ChargePaymentMethod**](ChargePaymentMethod.md) |  | [optional] |
| **processor_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::Charge.new(
  id: null,
  amount: null,
  captured_at: null,
  description: null,
  failure_reason: null,
  merchant_id: null,
  payment_method: null,
  processor_id: null,
  state: null,
  sub_merchant_id: null,
  created_at: null
)
```

