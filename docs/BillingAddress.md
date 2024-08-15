# BckbnPay::BillingAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **address_line1** | **String** |  | [optional] |
| **address_line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::BillingAddress.new(
  first_name: null,
  last_name: null,
  email: null,
  phone: null,
  address_line1: null,
  address_line2: null,
  city: null,
  state: null,
  country: null,
  postal_code: null
)
```

