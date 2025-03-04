# SubfiPay::SubscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_billing_period_end** | **Time** |  | [optional] |
| **current_billing_period_start** | **Time** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionResponse.new(
  current_billing_period_end: null,
  current_billing_period_start: null,
  customer_id: null,
  payment_method_id: null,
  state: null,
  subscription_plan_id: null,
  created_at: null,
  updated_at: null
)
```

