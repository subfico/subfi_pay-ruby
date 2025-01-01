# SubFiPay::ChargeAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **payment_method_id** | **String** |  |  |
| **connected_account_id** | **String** |  | [optional] |
| **immediate_capture** | **Boolean** | Determines whether the charge should be captured immediately | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::ChargeAttributes.new(
  amount: null,
  description: null,
  payment_method_id: null,
  connected_account_id: null,
  immediate_capture: null
)
```

