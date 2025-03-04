# SubfiPay::VoidAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **charge_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::VoidAttributes.new(
  amount: null,
  adjustment_reason: null,
  charge_id: null,
  description: null,
  metadata: null
)
```

