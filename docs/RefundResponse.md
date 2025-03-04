# SubfiPay::RefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **payment_intent_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **processor_transaction_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **type** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **can_cancel** | **Boolean** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::RefundResponse.new(
  id: null,
  account_id: null,
  amount: null,
  customer_id: null,
  description: null,
  metadata: null,
  payment_intent_id: null,
  payment_method_id: null,
  processor_transaction_id: null,
  state: null,
  succeeded_at: null,
  type: null,
  created_at: null,
  updated_at: null,
  can_cancel: null,
  adjustment_reason: null
)
```

