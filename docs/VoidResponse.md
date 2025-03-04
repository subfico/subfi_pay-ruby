# SubfiPay::VoidResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **original_transaction_id** | **String** |  | [optional] |
| **parent_transaction_id** | **String** |  | [optional] |
| **payment_intent_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **platform_fee** | **Integer** |  | [optional] |
| **source** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::VoidResponse.new(
  id: null,
  account_id: null,
  adjustment_reason: null,
  amount: null,
  currency: null,
  customer_id: null,
  description: null,
  metadata: null,
  original_transaction_id: null,
  parent_transaction_id: null,
  payment_intent_id: null,
  payment_method_id: null,
  platform_fee: null,
  source: null,
  state: null,
  statement_descriptor: null,
  succeeded_at: null,
  created_at: null,
  updated_at: null
)
```

