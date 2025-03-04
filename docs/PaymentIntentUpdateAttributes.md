# SubfiPay::PaymentIntentUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentUpdateAttributes.new(
  payment_method_id: null,
  amount: null,
  metadata: null
)
```

