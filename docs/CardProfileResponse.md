# SubfiPay::CardProfileResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avs_check** | **String** |  | [optional] |
| **avs_check_message** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **card_holder_name** | **String** |  | [optional] |
| **cvc_check** | **String** |  | [optional] |
| **cvc_check_message** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |
| **first6** | **String** |  | [optional] |
| **funding** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **three_d_secure_supported** | **Boolean** |  | [optional] |
| **token** | **String** |  | [optional] |
| **wallet_provider** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CardProfileResponse.new(
  avs_check: null,
  avs_check_message: null,
  brand: null,
  card_holder_name: null,
  cvc_check: null,
  cvc_check_message: null,
  exp_month: null,
  exp_year: null,
  first6: null,
  funding: null,
  last4: null,
  state: null,
  three_d_secure_supported: null,
  token: null,
  wallet_provider: null,
  created_at: null,
  updated_at: null
)
```

