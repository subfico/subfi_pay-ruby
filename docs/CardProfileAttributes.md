# SubfiPay::CardProfileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_holder_name** | **String** |  | [optional] |
| **cvc** | **String** |  | [optional] |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |
| **wallet_brand** | **String** |  | [optional] |
| **wallet_last4** | **String** |  | [optional] |
| **wallet_payload** | **String** |  | [optional] |
| **wallet_provider** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CardProfileAttributes.new(
  card_holder_name: null,
  cvc: null,
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null,
  wallet_brand: null,
  wallet_last4: null,
  wallet_payload: null,
  wallet_provider: null
)
```

