# frozen_string_literal: true

Bckbn.api_base = "http://localhost:8080"
Bckbn.access_token = "foobar"
Bckbn.merchant_id = "101"

@auth_body = {
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

@sale_body = {
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

@echeck_sale_body = {
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

@charge = {
  amount: 500_000_000,
  description: "JulyFees",
  source: {
    type: "bank",
    bank: {
      routing_number: "021200339",
      account_number: "6546543213",
      account_type: "Checking",
      name: "Glenn Quagmire"
    }
  }
}

@payout = {
  amount: 2500,
  description: "JulyFees",
  destination: {
    type: "bank",
    bank: {
      routing_number: "021200339",
      account_number: "6546543213",
      account_type: "Checking",
      name: "Glenn Quagmire"
    }
  }
}

# @originate_batch_body = {
#   "payments": [{
#     "account_number": "2654377916",
#     "receiver": {
#       "routing_number": "021200339",
#       "account_number": "6546543213",
#       "account_type": "Checking",
#       "name": "Glenn Quagmire",
#       "identification": "XYZ123"
#     },
#     "sec_code": "PPD",
#     "description": "JulyFees",
#     "transaction_type": "Push",
#     "amount": 25_000,
#     "purpose": "sample payment",
#     "service_type": "Standard"
#   },
#   {
#     "account_number": "2654377916",
#     "receiver": {
#       "routing_number": "021200339",
#       "account_number": "6546543213",
#       "account_type": "Checking",
#       "name": "Pam Anderson",
#       "identification": "ABCDEFG"
#     },
#     "sec_code": "PPD",
#     "description": "JulyFees",
#     "transaction_type": "Push",
#     "amount": 33_333,
#     "purpose": "sample payment",
#     "service_type": "Standard"
#   }]
# }
