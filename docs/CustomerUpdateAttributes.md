# SubfiPay::CustomerUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **phone** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CustomerUpdateAttributes.new(
  account_id: null,
  name: null,
  email: null,
  metadata: null,
  phone: null,
  payment_method_id: null
)
```

