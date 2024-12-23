# SubFiPay::CreateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::CreateCustomerRequest.new(
  customer_id: null,
  name: null,
  email: null,
  phone: null
)
```

