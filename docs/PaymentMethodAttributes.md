# SubfiPay::PaymentMethodAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **billing_address_attributes** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentMethodAttributes.new(
  customer_id: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null
)
```

