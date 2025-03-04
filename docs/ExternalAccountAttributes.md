# SubfiPay::ExternalAccountAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **external_billing_address_attributes** | [**BillingAddressAttributes**](BillingAddressAttributes.md) |  | [optional] |
| **external_bank_account_profile_attributes** | [**BankAccountProfileAttributes**](BankAccountProfileAttributes.md) |  | [optional] |
| **external_card_profile_attributes** | [**CardProfileAttributes**](CardProfileAttributes.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::ExternalAccountAttributes.new(
  metadata: null,
  external_billing_address_attributes: null,
  external_bank_account_profile_attributes: null,
  external_card_profile_attributes: null
)
```

