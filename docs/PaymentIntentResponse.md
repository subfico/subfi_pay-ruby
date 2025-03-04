# SubfiPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **embed_origin** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | Additional metadata key-value pairs | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **ttl** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::PaymentIntentResponse.new(
  id: null,
  account_id: null,
  amount: null,
  capture_method: null,
  charge_id: null,
  currency: null,
  customer_id: null,
  description: null,
  embed_origin: null,
  metadata: null,
  payment_method_id: null,
  source: null,
  state: null,
  statement_descriptor: null,
  token: null,
  ttl: null,
  created_at: null,
  updated_at: null
)
```

