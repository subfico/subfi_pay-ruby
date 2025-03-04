# SubfiPay::WebhookAttemptResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **webhook_request_id** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **request_body** | **Object** |  | [optional] |
| **response_body** | **Object** |  | [optional] |
| **status_code** | **Integer** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'subfi_pay'

instance = SubfiPay::WebhookAttemptResponse.new(
  id: null,
  webhook_request_id: null,
  error_message: null,
  request_body: null,
  response_body: null,
  status_code: null,
  success: null,
  created_at: null,
  updated_at: null
)
```

