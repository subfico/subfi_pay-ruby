# BckbnPay::BalanceTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **fee** | **Integer** |  | [optional] |
| **net** | **Integer** |  | [optional] |
| **refund_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::BalanceTransaction.new(
  id: null,
  amount: null,
  charge_id: null,
  created_at: null,
  fee: null,
  net: null,
  refund_id: null,
  state: null,
  type: null,
  updated_at: null,
  sub_merchant_id: null
)
```

