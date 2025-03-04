# SubfiPay::SetupIntentConfirmAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** |  | [optional] |
| **payment_method** | [**PaymentIntentConfirmAttributesPaymentMethod**](PaymentIntentConfirmAttributesPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SetupIntentConfirmAttributes.new(
  moto: null,
  payment_method: null
)
```

