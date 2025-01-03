# SubfiPay::BankAccountProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_holder_name** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **account_holder_type** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **encrypted_account_number** | **String** |  | [optional] |
| **routing_number** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::BankAccountProfile.new(
  account_holder_name: null,
  bank_name: null,
  account_holder_type: null,
  account_type: null,
  encrypted_account_number: null,
  routing_number: null
)
```

