# BckbnPay::BalanceTransactionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **fee** | **Integer** |  | [optional] |
| **net** | **Integer** |  | [optional] |
| **refund_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::BalanceTransactionAttributes.new(
  amount: null,
  charge_id: null,
  fee: null,
  net: null,
  refund_id: null,
  state: null,
  type: null
)
```

