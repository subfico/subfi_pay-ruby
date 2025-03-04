# SubfiPay::CheckoutTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **allowed_payment_method_types** | **Array&lt;String&gt;** |  | [optional] |
| **amount_min** | **Integer** |  | [optional] |
| **amount_max** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::CheckoutTemplateResponse.new(
  id: null,
  organization_id: null,
  allowed_payment_method_types: null,
  amount_min: null,
  amount_max: null,
  currency: null
)
```

