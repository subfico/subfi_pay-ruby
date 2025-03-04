# SubfiPay::ReconciliationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **parent_transaction_id** | **String** |  |  |
| **property** | **String** |  | [optional] |
| **old_value** | **String** |  | [optional] |
| **new_value** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::ReconciliationResponse.new(
  organization_id: null,
  user_id: null,
  parent_transaction_id: null,
  property: null,
  old_value: null,
  new_value: null,
  reason: null
)
```

