# SubfiPay::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **billing_address** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **bank_account_profile** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentMethodResponse.new(
  id: null,
  type: null,
  created_at: null,
  updated_at: null,
  customer_id: null,
  metadata: null,
  billing_address: null,
  card_profile: null,
  bank_account_profile: null
)
```

