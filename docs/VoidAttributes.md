# SubfiPay::VoidAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_reason** | **String** |  | [optional] |
| **parent_transaction_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::VoidAttributes.new(
  adjustment_reason: null,
  parent_transaction_id: null,
  description: null,
  metadata: null
)
```

