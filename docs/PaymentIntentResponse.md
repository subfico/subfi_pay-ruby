# SubfiPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **charge** | [**ChargeResponse**](ChargeResponse.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentResponse.new(
  id: null,
  account_id: null,
  amount: null,
  capture_method: null,
  customer_id: null,
  description: null,
  metadata: null,
  payment_method_id: null,
  state: null,
  charge: null,
  created_at: null,
  updated_at: null
)
```

