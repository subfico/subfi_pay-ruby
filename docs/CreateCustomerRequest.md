# BckbnPay::CreateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub_merchant_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::CreateCustomerRequest.new(
  sub_merchant_id: null,
  name: null,
  email: null,
  phone: null
)
```

