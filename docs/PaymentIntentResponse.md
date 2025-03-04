# SubfiPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **source** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentResponse.new(
  id: null,
  account_id: null,
  amount: null,
  capture_method: null,
  currency: null,
  customer_id: null,
  description: null,
  metadata: null,
  source: null,
  state: null,
  statement_descriptor: null,
  created_at: null,
  updated_at: null
)
```

