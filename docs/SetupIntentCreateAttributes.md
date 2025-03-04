# SubfiPay::SetupIntentCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SetupIntentCreateAttributes.new(
  customer_id: null,
  metadata: null
)
```

