# SubfiPay::PaymentIntentConfirmAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  | [optional] |
| **payment_method** | [**PaymentIntentConfirmAttributesPaymentMethod**](PaymentIntentConfirmAttributesPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentConfirmAttributes.new(
  payment_method_id: null,
  payment_method: null
)
```

