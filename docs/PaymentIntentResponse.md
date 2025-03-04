# SubfiPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **state** | **String** |  | [optional] |
| **active_charge** | [**ChargeResponse**](ChargeResponse.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentResponse.new(
  id: null,
  payment_method_id: null,
  amount: null,
  capture_method: null,
  customer_id: null,
  description: null,
  metadata: null,
  state: null,
  active_charge: null,
  created_at: null,
  updated_at: null
)
```

