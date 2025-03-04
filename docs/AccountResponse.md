# SubfiPay::AccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **processor_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::AccountResponse.new(
  id: null,
  name: null,
  active: null,
  merchant_id: null,
  mcc: null,
  processor_id: null,
  created_at: null,
  updated_at: null
)
```

