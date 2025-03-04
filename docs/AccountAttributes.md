# SubfiPay::AccountAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **processor** | [**AccountAttributesProcessor**](AccountAttributesProcessor.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::AccountAttributes.new(
  merchant_id: null,
  name: null,
  processor: null
)
```

