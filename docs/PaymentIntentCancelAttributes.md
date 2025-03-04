# SubfiPay::PaymentIntentCancelAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_reason** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentCancelAttributes.new(
  adjustment_reason: null,
  description: null
)
```

