# SubFiPay::AccessKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Time** |  | [optional] |
| **key** | **String** |  | [optional] |
| **live** | **Boolean** |  | [optional] |
| **type** | **String** |  | [optional] |
| **can_roll** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **last_used_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::AccessKey.new(
  expires_at: null,
  key: null,
  live: null,
  type: null,
  can_roll: null,
  created_at: null,
  updated_at: null,
  last_used_at: null
)
```

