# BckbnPay::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **data** | **Object** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::Event.new(
  id: null,
  event: null,
  data: null,
  merchant_id: null,
  sub_merchant_id: null,
  created_at: null,
  updated_at: null
)
```

