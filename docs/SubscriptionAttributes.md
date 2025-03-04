# SubfiPay::SubscriptionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **next_payment_date** | **Time** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionAttributes.new(
  customer_id: null,
  next_payment_date: null,
  subscription_plan_id: null
)
```

