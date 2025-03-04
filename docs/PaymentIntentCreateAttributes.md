# SubfiPay::PaymentIntentCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **payment_method_id** | **String** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **embed** | **Boolean** |  | [optional] |
| **embed_origin** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentCreateAttributes.new(
  amount: null,
  payment_method_id: null,
  capture_method: null,
  customer_id: null,
  description: null,
  embed: null,
  embed_origin: null,
  metadata: null
)
```

