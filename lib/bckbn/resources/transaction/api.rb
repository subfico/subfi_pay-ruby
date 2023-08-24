# frozen_string_literal: true

module Bckbn
  module Transaction
    ENDPOINTS = {
      authorization: "/transactions/authorization",
      capture: "/transactions/capture",
      credit: "/transactions/credit",
      sale: "/transactions/sale",
      void: "/transactions/void",
      echeck_credit: "/transactions/echeck_credit",
      echeck_sale: "/transactions/echeck_sale",
      echeck_void: "/transactions/echeck_void"
    }.freeze
    private_constant :ENDPOINTS

    def self.authorization(body, config = {})
      body = AuthorizationRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, AuthorizationResponse)
    end

    def self.capture(body, config = {})
      body = CaptureRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, CaptureResponse)
    end

    def self.credit(body, config = {})
      body = CreditRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, CreditResponse)
    end

    def self.sale(body, config = {})
      body = SaleRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, SaleResponse)
    end

    def self.void(body, config = {})
      body = VoidRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, VoidResponse)
    end

    def self.echeck_credit(body, config = {})
      body = EcheckCreditRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, EcheckCreditResponse)
    end

    def self.echeck_sale(body, config = {})
      body = EcheckSaleRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, EcheckSaleResponse)
    end

    def self.echeck_void(body, config = {})
      body = EcheckVoidRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, EcheckVoidResponse)
    end
  end
end
