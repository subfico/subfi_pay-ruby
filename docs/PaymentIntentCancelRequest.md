# SubfiPay::PaymentIntentCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent** | [**PaymentIntentCancelAttributes**](PaymentIntentCancelAttributes.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentCancelRequest.new(
  payment_intent: null
)
```

