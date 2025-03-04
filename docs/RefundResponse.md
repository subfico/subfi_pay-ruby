# SubfiPay::RefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **org_fee** | **Integer** |  | [optional] |
| **org_per_txn_fee** | **Integer** |  | [optional] |
| **org_rate** | **Float** |  | [optional] |
| **original_transaction_id** | **String** |  | [optional] |
| **payment_intent_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **platform_fee** | **Integer** |  | [optional] |
| **platform_per_txn_fee** | **Integer** |  | [optional] |
| **platform_rate** | **Float** |  | [optional] |
| **processor_authorization_id** | **String** |  | [optional] |
| **processor_capture_id** | **String** |  | [optional] |
| **processor_data** | **Object** |  | [optional] |
| **processor_refund_id** | **String** |  | [optional] |
| **processor_sale_id** | **String** |  | [optional] |
| **processor_void_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **type** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **can_cancel** | **Boolean** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::RefundResponse.new(
  id: null,
  account_id: null,
  adjustment_reason: null,
  amount: null,
  customer_id: null,
  description: null,
  metadata: null,
  org_fee: null,
  org_per_txn_fee: null,
  org_rate: null,
  original_transaction_id: null,
  payment_intent_id: null,
  payment_method_id: null,
  platform_fee: null,
  platform_per_txn_fee: null,
  platform_rate: null,
  processor_authorization_id: null,
  processor_capture_id: null,
  processor_data: null,
  processor_refund_id: null,
  processor_sale_id: null,
  processor_void_id: null,
  state: null,
  succeeded_at: null,
  type: null,
  created_at: null,
  updated_at: null,
  can_cancel: null
)
```

