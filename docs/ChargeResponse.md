# BckbnPay::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **payment_method_id** | **String** |  |  |
| **sub_merchant_id** | **String** |  | [optional] |
| **immediate_capture** | **Boolean** | Determines whether the charge should be captured immediately | [optional] |
| **id** | **String** |  | [optional] |
| **captured_at** | **Time** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **payment_method** | [**PaymentMethodResponse**](PaymentMethodResponse.md) |  | [optional] |
| **processor_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::ChargeResponse.new(
  amount: null,
  description: null,
  payment_method_id: null,
  sub_merchant_id: null,
  immediate_capture: null,
  id: null,
  captured_at: null,
  failure_reason: null,
  merchant_id: null,
  payment_method: null,
  processor_id: null,
  state: null,
  created_at: null
)
```

