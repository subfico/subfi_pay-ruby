# SubfiPay::PaymentIntentConfirmAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **payment_method** | [**PaymentIntentConfirmAttributesPaymentMethod**](PaymentIntentConfirmAttributesPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentConfirmAttributes.new(
  moto: null,
  payment_method_id: null,
  payment_method: null
)
```

