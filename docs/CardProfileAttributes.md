# SubfiPay::CardProfileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** |  | [optional] |
| **cvc** | **String** |  | [optional] |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CardProfileAttributes.new(
  brand: null,
  cvc: null,
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null
)
```

