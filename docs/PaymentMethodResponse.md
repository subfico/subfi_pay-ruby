# SubfiPay::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **type** | **String** |  | [optional] |
| **bank_account_profile** | [**BankAccountProfileResponse**](BankAccountProfileResponse.md) |  | [optional] |
| **billing_address** | [**BillingAddressResponse**](BillingAddressResponse.md) |  | [optional] |
| **card_profile** | [**CardProfileResponse**](CardProfileResponse.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentMethodResponse.new(
  id: null,
  customer_id: null,
  metadata: null,
  type: null,
  bank_account_profile: null,
  billing_address: null,
  card_profile: null,
  created_at: null,
  updated_at: null
)
```

