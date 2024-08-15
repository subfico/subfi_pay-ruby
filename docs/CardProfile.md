# BckbnPay::CardProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |
| **cvc** | **String** |  | [optional] |
| **avs_check** | **String** |  | [optional] |
| **avs_check_message** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **cvc_check** | **String** |  | [optional] |
| **cvc_check_message** | **String** |  | [optional] |
| **funding** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **three_d_secure_supported** | **Boolean** |  | [optional] |
| **token** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::CardProfile.new(
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null,
  cvc: null,
  avs_check: null,
  avs_check_message: null,
  brand: null,
  cvc_check: null,
  cvc_check_message: null,
  funding: null,
  last4: null,
  three_d_secure_supported: null,
  token: null
)
```

