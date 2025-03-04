# SubfiPay::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **name** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CustomerResponse.new(
  id: null,
  account_id: null,
  email: null,
  metadata: null,
  name: null,
  payment_method_id: null,
  phone: null,
  type: null,
  created_at: null,
  updated_at: null
)
```

