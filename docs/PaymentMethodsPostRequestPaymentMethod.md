# BckbnPay::PaymentMethodsPostRequestPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **billing_address_attributes** | [**PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes**](PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes.md) |  | [optional] |
| **card_profile_attributes** | [**PaymentMethodsPostRequestPaymentMethodCardProfileAttributes**](PaymentMethodsPostRequestPaymentMethodCardProfileAttributes.md) |  | [optional] |
| **bank_account_profile_attributes** | [**PaymentMethodsPostRequestPaymentMethodBankAccountProfileAttributes**](PaymentMethodsPostRequestPaymentMethodBankAccountProfileAttributes.md) |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentMethodsPostRequestPaymentMethod.new(
  type: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null
)
```

