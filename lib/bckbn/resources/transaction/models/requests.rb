# frozen_string_literal: true

module Bckbn
  module Transaction
    REQUEST_BASE = %i[
      id
      report_group
    ].freeze

    AUTHORIZATION_REQUEST_MEMBERS = [
      *REQUEST_BASE,
      :amount,
      :bill_to_address,
      :cardholder_authentication,
      :card,
      :order_id,
      :order_source,
      :partial
    ].freeze

    ECHECK_SALE_REQUEST_MEMBERS = [
      *REQUEST_BASE,
      :amount,
      :bill_to_address,
      :echeck,
      :order_id,
      :order_source
    ].freeze

    CAPTURE_REQUEST_MEMBERS = [*REQUEST_BASE, :litle_txn_id, :partial].freeze
    VOID_REQUEST_MEMBERS    = [*REQUEST_BASE, :litle_txn_id].freeze
    CREDIT_REQUEST_MEMBERS  = [*REQUEST_BASE, :litle_txn_id, :amount].freeze

    module RequestShared
      def initialize(opts)
        valid_opts = opts.slice(*members)
        valid_opts.each { |key, value| public_send("#{key}=", value) }
      end

      # use to_h for any necessary key formatting
      def to_h
        h = super
        h.delete(:cardholder_authentication) if h[:cardholder_authentication].nil?
        h
      end
    end

    AuthorizationRequest = Struct.new(*AUTHORIZATION_REQUEST_MEMBERS, keyword_init: true)
    SaleRequest          = Struct.new(*AUTHORIZATION_REQUEST_MEMBERS, keyword_init: true)
    CaptureRequest       = Struct.new(*CAPTURE_REQUEST_MEMBERS, keyword_init: true)
    CreditRequest        = Struct.new(*CREDIT_REQUEST_MEMBERS, keyword_init: true)
    EcheckCreditRequest  = Struct.new(*CREDIT_REQUEST_MEMBERS, keyword_init: true)
    VoidRequest          = Struct.new(*VOID_REQUEST_MEMBERS, keyword_init: true)
    EcheckVoidRequest    = Struct.new(*VOID_REQUEST_MEMBERS, keyword_init: true)
    EcheckSaleRequest    = Struct.new(*ECHECK_SALE_REQUEST_MEMBERS, keyword_init: true)
    [
      AuthorizationRequest,
      CaptureRequest,
      CreditRequest,
      EcheckSaleRequest,
      SaleRequest,
      VoidRequest
    ].each { |rc| rc.send(:include, RequestShared) }
  end
end
