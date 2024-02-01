# bckbn-ruby

> Ruby interface to the Bckbn API

## Installation

```bash
gem install bckbn
```

## Configuration
Local configuration will override global configuration where
they conflict. Some config can only be set locally, like an 
`idempotency_key`.

### Global

```ruby
require "bckbn"

Bckbn.api_base = "..."
Bckbn.access_token = "..."
Bckbn.worldpay_merchant_id = "..."

Bckbn::Transaction.capture({ 
  litle_txn_id: "13254123434",
  id: "12345",
  report_group: "ABC Division"
})
```

### Local

```ruby
require "bckbn"

api_base = "..."
access_token = "..."
worldpay_merchant_id = "..."
idempotency_key = "..."

Bckbn::Transaction.capture(
  { 
    litle_txn_id: "13254123434",
    id: "12345",
    report_group: "ABC Division"
  }, 
  {
    api_base: api_base,
    access_token: access_token,
    worldpay_merchant_id: worldpay_merchant_id,
    idempotency_key: idempotency_key
  }
)
```

### Idempotency
An idempotency key can be added to allow retries without creating duplicate transactions.
Successful POST requests will return a cached response. New requests can be issued 
by changing the request body or the idempotency key.

## Documentation

```
open doc/index.html
```

## Development

Run specs
```bash
bundle exec rake spec
```

Regenerate docs
```bash
bundle exec rake yard
```

Run linter
```bash
bundle exec rake rubocop
```

## License

MIT
