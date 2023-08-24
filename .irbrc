# frozen_string_literal: true

Bckbn.api_base = "http://localhost:8080"
Bckbn.access_token = "foobar"
Bckbn.merchant_id = "101"

module Seeds
  AUTH = {
    amount: 5000,
    bill_to_address: {
      name: "John Doe",
      address_line_1: "123 Main St",
      city: "Boston",
      state: "MA",
      country: "US",
      zip: "12345",
      email: "jsmith@someaddress.com",
      phone: "555-123-4567"
    },
    card: {
      type: "MC",
      number: "{{1234567890123456}}",
      exp_date: "1223"
    },
    id: "12345",
    order_id: "5234234",
    order_source: "ecommerce",
    partial: false,
    report_group: "ABC Division"
  }.freeze

  SALE = {
    id: "12345",
    report_group: "ABC Division",
    amount: 5000,
    "card": {
      "type": "VI",
      "number": "{{1234567890123456}}",
      "exp_date": "1223",
      "card_validation_num": "123"
    },
    "bill_to_address": {
      "name": "John Doe",
      "address_line_1": "123 Main St",
      "city": "Boston",
      "state": "MA",
      "country": "US",
      "zip": "12345",
      "email": "jsmith@someaddress.com",
      "phone": "555-123-4567"
    },
    partial: false,
    order_id: "5234234",
    order_source: "ecommerce"
  }.freeze

  ECHECK_SALE = {
    "echeck": {
      "acc_type": "Checking",
      "acc_num": "5186005800001012",
      "routing_num": "000010101",
      "check_num": nil
    },
    "bill_to_address": {
      "name": "John Doe",
      "address_line_1": "123 Main St",
      "city": "Boston",
      "state": "MA",
      "country": "US",
      "zip": "12345",
      "email": "jsmith@someaddress.com",
      "phone": "555-123-4567"
    },
    "amount": 5000,
    "id": "12345",
    "report_group": "ABC Division",
    "order_id": "5234234",
    "order_source": "ecommerce"
  }.freeze
end
