# SubfiPay::SubscriptionPlanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **name** | **String** |  | [optional] |
| **plan_type** | **String** |  | [optional] |
| **trial_period_days** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionPlanResponse.new(
  id: null,
  account_id: null,
  product_id: null,
  active: null,
  amount: null,
  currency: null,
  cycles: null,
  description: null,
  interval: null,
  interval_count: null,
  metadata: null,
  name: null,
  plan_type: null,
  trial_period_days: null,
  created_at: null,
  updated_at: null
)
```

