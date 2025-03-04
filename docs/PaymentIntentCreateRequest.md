# SubfiPay::PaymentIntentCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent** | [**PaymentIntentCreateAttributes**](PaymentIntentCreateAttributes.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentCreateRequest.new(
  payment_intent: null
)
```

