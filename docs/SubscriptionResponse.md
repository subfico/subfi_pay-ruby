# SubfiPay::SubscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **state** | **String** |  | [optional] |
| **cycles_completed** | **Integer** |  | [optional] |
| **current_billing_period_start** | **Time** |  | [optional] |
| **current_billing_period_end** | **Time** |  | [optional] |
| **trial_ends_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionResponse.new(
  id: null,
  account_id: null,
  amount: null,
  currency: null,
  cycles: null,
  subscription_plan_id: null,
  customer_id: null,
  payment_method_id: null,
  interval: null,
  interval_count: null,
  state: null,
  cycles_completed: null,
  current_billing_period_start: null,
  current_billing_period_end: null,
  trial_ends_at: null,
  created_at: null,
  updated_at: null
)
```

