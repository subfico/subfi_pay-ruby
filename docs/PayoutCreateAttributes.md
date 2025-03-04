# SubfiPay::PayoutCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_account_id** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PayoutCreateAttributes.new(
  external_account_id: null,
  amount: null,
  currency: null,
  metadata: null
)
```

