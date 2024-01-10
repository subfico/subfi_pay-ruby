# frozen_string_literal: true

module Bckbn
  module Transaction
    ENDPOINTS = {
      authorization: "/transaction/authorization",
      capture: "/transaction/capture",
      credit: "/transaction/credit",
      sale: "/transaction/sale",
      void: "/transaction/void",
      echeck_credit: "/transaction/echeck_credit",
      echeck_sale: "/transaction/echeck_sale",
      echeck_void: "/transaction/echeck_void"
    }.freeze
    private_constant :ENDPOINTS

    class << self
      def authorization(body, config = {})
        process_transaction(__method__, body, config, AuthorizationRequest, AuthorizationResponse)
      end

      def capture(body, config = {})
        process_transaction(__method__, body, config, CaptureRequest, CaptureResponse)
      end

      def credit(body, config = {})
        process_transaction(__method__, body, config, CreditRequest, CreditResponse)
      end

      def sale(body, config = {})
        process_transaction(__method__, body, config, SaleRequest, SaleResponse)
      end

      def void(body, config = {})
        process_transaction(__method__, body, config, VoidRequest, VoidResponse)
      end

      def echeck_credit(body, config = {})
        process_transaction(__method__, body, config, EcheckCreditRequest, EcheckCreditResponse)
      end

      def echeck_sale(body, config = {})
        process_transaction(__method__, body, config, EcheckSaleRequest, EcheckSaleResponse)
      end

      def echeck_void(body, config = {})
        process_transaction(__method__, body, config, EcheckVoidRequest, EcheckVoidResponse)
      end

      private

      def process_transaction(method, body, config, request_klass, response_klass)
        request = request_klass.new(body)
        conn = Bckbn::Connection.new(config)
        conn.post_to_api(ENDPOINTS.fetch(method), request.to_h, response_klass)
      end
    end
  end
end
