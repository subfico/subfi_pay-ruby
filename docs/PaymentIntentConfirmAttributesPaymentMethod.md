# SubfiPay::PaymentIntentConfirmAttributesPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfileAttributes**](BankAccountProfileAttributes.md) |  | [optional] |
| **billing_address_attributes** | [**BillingAddressAttributes**](BillingAddressAttributes.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfileAttributes**](CardProfileAttributes.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentConfirmAttributesPaymentMethod.new(
  metadata: null,
  bank_account_profile_attributes: null,
  billing_address_attributes: null,
  card_profile_attributes: null
)
```

