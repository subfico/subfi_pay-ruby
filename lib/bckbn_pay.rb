=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

# Common files
require 'bckbn_pay/api_client'
require 'bckbn_pay/api_error'
require 'bckbn_pay/version'
require 'bckbn_pay/configuration'

# Models
require 'bckbn_pay/models/balance_transaction'
require 'bckbn_pay/models/balance_transactions_get200_response'
require 'bckbn_pay/models/charge'
require 'bckbn_pay/models/charge_payment_method'
require 'bckbn_pay/models/charge_payment_method_billing_address'
require 'bckbn_pay/models/charge_payment_method_card_profile'
require 'bckbn_pay/models/charges_get200_response'
require 'bckbn_pay/models/charges_post_request'
require 'bckbn_pay/models/charges_post_request_charge'
require 'bckbn_pay/models/meta'
require 'bckbn_pay/models/payment_method'
require 'bckbn_pay/models/payment_methods_post_request'
require 'bckbn_pay/models/payment_methods_post_request_payment_method'
require 'bckbn_pay/models/payment_methods_post_request_payment_method_bank_account_profile_attributes'
require 'bckbn_pay/models/payment_methods_post_request_payment_method_billing_address_attributes'
require 'bckbn_pay/models/payment_methods_post_request_payment_method_card_profile_attributes'
require 'bckbn_pay/models/refund'
require 'bckbn_pay/models/refunds_post_request'
require 'bckbn_pay/models/refunds_post_request_refund'
require 'bckbn_pay/models/sub_merchant'
require 'bckbn_pay/models/sub_merchants_post_request'
require 'bckbn_pay/models/sub_merchants_post_request_sub_merchant'

# APIs
require 'bckbn_pay/api/balance_transactions_api'
require 'bckbn_pay/api/charges_api'
require 'bckbn_pay/api/payment_methods_api'
require 'bckbn_pay/api/refunds_api'
require 'bckbn_pay/api/sub_merchants_api'

module BckbnPay
  class << self
    # Customize default settings for the SDK using block.
    #   BckbnPay.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
