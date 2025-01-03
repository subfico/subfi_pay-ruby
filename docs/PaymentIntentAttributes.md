# SubfiPay::PaymentIntentAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **payment_method_id** | **String** |  | [optional] |
| **capture_async** | **Boolean** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentAttributes.new(
  amount: null,
  payment_method_id: null,
  capture_async: null,
  connected_account_id: null,
  description: null
)
```

