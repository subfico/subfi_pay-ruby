# BckbnPay::ChargePaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **billing_address** | [**ChargePaymentMethodBillingAddress**](ChargePaymentMethodBillingAddress.md) |  | [optional] |
| **card_profile** | [**ChargePaymentMethodCardProfile**](ChargePaymentMethodCardProfile.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **partner_id** | **String** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::ChargePaymentMethod.new(
  id: null,
  billing_address: null,
  card_profile: null,
  created_at: null,
  metadata: null,
  partner_id: null,
  updated_at: null
)
```

