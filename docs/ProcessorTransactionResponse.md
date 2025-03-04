# SubfiPay::ProcessorTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **approved** | **Boolean** |  | [optional] |
| **avs_check** | **String** |  | [optional] |
| **avs_check_message** | **String** |  | [optional] |
| **cvc_check** | **String** |  | [optional] |
| **cvc_check_message** | **String** |  | [optional] |
| **external_reference** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **payment_transaction_id** | **String** |  | [optional] |
| **payment_transaction_type** | **String** |  | [optional] |
| **processor_transaction_id** | **String** |  | [optional] |
| **processor_reference** | **String** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::ProcessorTransactionResponse.new(
  id: null,
  account_id: null,
  approved: null,
  avs_check: null,
  avs_check_message: null,
  cvc_check: null,
  cvc_check_message: null,
  external_reference: null,
  metadata: null,
  payment_method_id: null,
  payment_transaction_id: null,
  payment_transaction_type: null,
  processor_transaction_id: null,
  processor_reference: null,
  transaction_type: null,
  created_at: null,
  updated_at: null
)
```

