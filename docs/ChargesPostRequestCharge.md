# BckbnPay::ChargesPostRequestCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **payment_method_id** | **String** |  |  |
| **sub_merchant_id** | **String** |  | [optional] |
| **immediate_capture** | **Boolean** | Determines whether the charge should be captured immediately | [optional] |
| **billing_address_attributes** | [**BillingAddress**](BillingAddress.md) |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::ChargesPostRequestCharge.new(
  amount: null,
  description: null,
  payment_method_id: null,
  sub_merchant_id: null,
  immediate_capture: null,
  billing_address_attributes: null
)
```

