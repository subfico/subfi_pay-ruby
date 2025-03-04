# SubfiPay::SubscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **cycles_completed** | **Integer** |  | [optional] |
| **current_billing_period_start** | **Time** |  | [optional] |
| **current_billing_period_end** | **Time** |  | [optional] |
| **trial_ends_at** | **Time** |  | [optional] |
| **cancel_at_period_end** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionResponse.new(
  id: null,
  account_id: null,
  subscription_plan_id: null,
  customer_id: null,
  payment_method_id: null,
  state: null,
  cycles_completed: null,
  current_billing_period_start: null,
  current_billing_period_end: null,
  trial_ends_at: null,
  cancel_at_period_end: null,
  created_at: null,
  updated_at: null
)
```

