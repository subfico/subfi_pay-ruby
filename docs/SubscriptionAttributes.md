# SubfiPay::SubscriptionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connected_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **next_payment_date** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SubscriptionAttributes.new(
  connected_account_id: null,
  customer_id: null,
  payment_method_id: null,
  amount: null,
  interval: null,
  interval_count: null,
  next_payment_date: null
)
```

