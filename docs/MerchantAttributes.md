# SubfiPay::MerchantAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_name** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::MerchantAttributes.new(
  legal_name: null,
  dba_name: null,
  metadata: null
)
```

