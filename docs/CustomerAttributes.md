# SubfiPay::CustomerAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CustomerAttributes.new(
  name: null,
  email: null,
  phone: null,
  metadata: null
)
```

