# BckbnPay::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **billing_address_attributes** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **partner_id** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentMethodResponse.new(
  type: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null,
  id: null,
  created_at: null,
  updated_at: null,
  metadata: null,
  partner_id: null,
  sub_merchant_id: null
)
```

