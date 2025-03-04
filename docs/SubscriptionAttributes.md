# SubfiPay::SubscriptionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionAttributes.new(
  amount: null,
  currency: null,
  customer_id: null,
  cycles: null,
  interval: null,
  interval_count: null,
  subscription_plan_id: null
)
```

