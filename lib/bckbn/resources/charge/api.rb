# frozen_string_literal: true

module Bckbn
  module Charge
    ENDPOINTS = {
      all: "/charges",
      create: "/charges",
      get: "/charges/{id}"
    }.freeze
    private_constant :ENDPOINTS

    def self.all(config = {})
      path = ENDPOINTS.fetch(__method__)
      @conn = Bckbn::Connection.new(config)
      @conn.get_from_api(path, ChargesResponse)
    end

    def self.create(body, config = {})
      body = CreateChargeRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, ChargeResponse)
    end

    def self.get(id, config = {})
      path = Addressable::Template.new(ENDPOINTS.fetch(__method__)).expand(id: id)
      @conn = Bckbn::Connection.new(config)
      @conn.get_from_api(path, ChargeResponse)
    end
  end
end
