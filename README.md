# bckbn-ruby

> Ruby interface to the Bckbn API

## Installation

```bash
gem install bckbn
```

## Configuration

### Global

```ruby
require "bckbn"

Bckbn.api_base = "..."
Bckbn.access_token = "..."
Bckbn.merchant_id = "..."

Bckbn::Transaction.capture({ 
  litle_txn_id: "13254123434",
  id: "12345",
  report_group: "ABC Division"
})
```

### Per Request

```ruby
require "bckbn"

api_base = "..."
access_token = "..."
merchant_id = "..."

Bckbn::Transaction.capture(
  { 
    litle_txn_id: "13254123434",
    id: "12345",
    report_group: "ABC Division"
  }, 
  {
    api_base:,
    access_token:,
    merchant_id:
  }
)
```

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
