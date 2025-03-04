# SubfiPay::CheckoutTemplateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_method_types** | **Array&lt;String&gt;** |  | [optional] |
| **amount_min** | **Integer** |  | [optional] |
| **amount_max** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **origin_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CheckoutTemplateAttributes.new(
  allowed_payment_method_types: null,
  amount_min: null,
  amount_max: null,
  currency: null,
  origin_ids: null
)
```

