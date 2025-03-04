# SubfiPay::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **original_transaction_id** | **String** |  | [optional] |
| **payment_intent_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **processor_transaction_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **type** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **platform_fee** | **Integer** |  | [optional] |
| **platform_rate** | [**Numeric**](Numeric.md) |  | [optional] |
| **platform_per_txn_fee** | **Integer** |  | [optional] |
| **org_fee** | **Integer** |  | [optional] |
| **org_rate** | [**Numeric**](Numeric.md) |  | [optional] |
| **org_per_txn_fee** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **can_cancel** | **Boolean** |  | [optional] |
| **can_refund** | **Boolean** |  | [optional] |
| **can_void** | **Boolean** |  | [optional] |
| **refunds** | [**Array&lt;RefundResponse&gt;**](RefundResponse.md) |  | [optional] |
| **voids** | [**Array&lt;VoidResponse&gt;**](VoidResponse.md) |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::ChargeResponse.new(
  id: null,
  account_id: null,
  amount: null,
  customer_id: null,
  description: null,
  metadata: null,
  original_transaction_id: null,
  payment_intent_id: null,
  payment_method_id: null,
  processor_transaction_id: null,
  state: null,
  succeeded_at: null,
  type: null,
  failure_reason: null,
  adjustment_reason: null,
  platform_fee: null,
  platform_rate: null,
  platform_per_txn_fee: null,
  org_fee: null,
  org_rate: null,
  org_per_txn_fee: null,
  created_at: null,
  updated_at: null,
  can_cancel: null,
  can_refund: null,
  can_void: null,
  refunds: null,
  voids: null
)
```

