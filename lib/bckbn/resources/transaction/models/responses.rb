# frozen_string_literal: true

module Bckbn
  module Transaction
    using Bckbn::CoreExt::StringExt

    RESPONSE_BASE = %i[
      customer_id
      id
      litle_txn_id
      message
      post_date
      report_group
      response
      response_time
      account_updater
    ].freeze

    AUTHORIZATION_RESPONSE_MEMBERS = [
      *RESPONSE_BASE,
      :approved_amount,
      :auth_code,
      :network_transaction_id,
      :order_id,
      :fraud_result
    ].freeze

    SALE_RESPONSE_MEMBERS = [
      *RESPONSE_BASE,
      :auth_code,
      :network_transaction_id,
      :order_id,
      :fraud_result
    ].freeze
    private_constant :RESPONSE_BASE,
                     :AUTHORIZATION_RESPONSE_MEMBERS,
                     :SALE_RESPONSE_MEMBERS

    AuthorizationResponse = Struct.new(*AUTHORIZATION_RESPONSE_MEMBERS, keyword_init: true)
    SaleResponse          = Struct.new(*SALE_RESPONSE_MEMBERS, keyword_init: true)

    %w[
      CaptureResponse
      CreditResponse
      EcheckCreditResponse
      EcheckVoidResponse
      EcheckSaleResponse
      VoidResponse
    ].each do |response|
      Bckbn::Transaction.const_set(response, Struct.new(*RESPONSE_BASE, keyword_init: true))
    end

    module ResponseShared
      def type
        self.class.name.split("::").last =~ /(.*)Response/
        ::Regexp.last_match(1).underscore.downcase
      end
    end

    [
      AuthorizationResponse,
      SaleResponse,
      CaptureResponse,
      CreditResponse,
      EcheckCreditResponse,
      EcheckVoidResponse,
      EcheckSaleResponse,
      VoidResponse
    ].each { |rc| rc.send(:include, ResponseShared) }

    FraudResult = Struct.new(:avs_result, :card_validation_result, :authentication_result, keyword_init: true)
  end
end
