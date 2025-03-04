# SubfiPay::SetupIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::SetupIntentResponse.new(
  id: null,
  account_id: null,
  customer_id: null,
  metadata: null,
  payment_method_id: null,
  source: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

