# SubfiPay::SubscriptionPlanAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **name** | **String** |  | [optional] |
| **plan_type** | **String** |  | [optional] |
| **trial_period_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionPlanAttributes.new(
  active: null,
  amount: null,
  currency: null,
  cycles: null,
  product_id: null,
  description: null,
  interval: null,
  interval_count: null,
  metadata: null,
  name: null,
  plan_type: null,
  trial_period_days: null
)
```

