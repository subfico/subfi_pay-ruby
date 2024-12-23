# SubFiPay::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event_id** | **String** |  | [optional] |
| **webhook_endpoint_id** | **String** |  | [optional] |
| **status_code** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **request_body** | **Object** |  | [optional] |
| **response_body** | **Object** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **retry_count** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubFiPay::WebhookRequest.new(
  id: null,
  event_id: null,
  webhook_endpoint_id: null,
  status_code: null,
  error_message: null,
  request_body: null,
  response_body: null,
  success: null,
  retry_count: null,
  created_at: null,
  updated_at: null
)
```

