# SubfiPay::CardProfileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvc** | **String** |  | [optional] |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CardProfileAttributes.new(
  cvc: null,
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null
)
```

