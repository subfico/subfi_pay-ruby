# SubfiPay::MerchantAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dba_name** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::MerchantAttributes.new(
  dba_name: null,
  legal_name: null,
  mcc: null,
  metadata: null
)
```

