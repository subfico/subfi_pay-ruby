# SubfiPay::MerchantResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::MerchantResponse.new(
  id: null,
  organization_id: null,
  legal_name: null,
  dba_name: null,
  metadata: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

