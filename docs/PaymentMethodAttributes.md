# SubfiPay::PaymentMethodAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **set_as_customer_default** | **String** |  | [optional] |
| **billing_address_attributes** | [**BillingAddressAttributes**](BillingAddressAttributes.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfileAttributes**](CardProfileAttributes.md) |  | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfileAttributes**](BankAccountProfileAttributes.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentMethodAttributes.new(
  customer_id: null,
  metadata: null,
  set_as_customer_default: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null
)
```

