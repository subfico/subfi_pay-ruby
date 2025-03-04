# SubfiPay::PaymentIntentAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **payment_method_id** | **String** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentAttributes.new(
  amount: null,
  payment_method_id: null,
  capture_method: null,
  description: null,
  metadata: null
)
```

