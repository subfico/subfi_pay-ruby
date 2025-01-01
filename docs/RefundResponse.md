# SubFiPay::RefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **connected_account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::RefundResponse.new(
  id: null,
  failure_reason: null,
  state: null,
  created_at: null,
  connected_account_id: null,
  amount: null,
  charge_id: null
)
```

