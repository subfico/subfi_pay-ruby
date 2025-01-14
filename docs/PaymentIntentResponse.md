# SubfiPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **active_payment_method_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |
| **payment_methods** | [**Array&lt;PaymentMethodResponse&gt;**](PaymentMethodResponse.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentResponse.new(
  id: null,
  active_payment_method_id: null,
  amount: null,
  capture_method: null,
  description: null,
  state: null,
  connected_account_id: null,
  payment_methods: null
)
```

