# frozen_string_literal: true

module Bckbn
  module Ach
    ENDPOINTS = {
      originate_batch: "/ach/batch",
      get_batch: "/ach/batch/{id}",
      cancel_batch: "/ach/batch/{id}/cancel"
    }.freeze
    private_constant :ENDPOINTS

    def self.originate_batch(body, config = {})
      body = OriginateBatchRequest.new(body)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(ENDPOINTS.fetch(__method__), body.to_h, BatchResponse)
    end

    def self.get_batch(id, config = {})
      path = Addressable::Template.new(ENDPOINTS.fetch(__method__)).expand(id: id)
      @conn = Bckbn::Connection.new(config)
      @conn.get_from_api(path, BatchResponse)
    end

    def self.cancel_batch(id, config = {})
      path = Addressable::Template.new(ENDPOINTS.fetch(__method__)).expand(id: id)
      @conn = Bckbn::Connection.new(config)
      @conn.post_to_api(path, nil, BatchResponse)
    end
  end
end
