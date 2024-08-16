# BckbnPay::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **sub_merchant_id** | **String** |  | [optional] |
| **billing_address_attributes** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **partner_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentMethodResponse.new(
  type: null,
  sub_merchant_id: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null,
  id: null,
  partner_id: null,
  created_at: null,
  updated_at: null,
  metadata: null
)
```

