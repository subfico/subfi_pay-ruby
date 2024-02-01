# frozen_string_literal: true

module Bckbn
  API_VERSION = "0.1.0"
  CONFIG_OPTIONS = %i[
    access_token
    api_version
    api_base
    log_level
    worldpay_merchant_id
    source_ip_address
    idempotency_key
  ].freeze

  Configuration = Struct.new(*CONFIG_OPTIONS, keyword_init: true) do
    def self.setup
      new
    end

    def initialize(**opts)
      opts[:api_version] ||= API_VERSION
      opts[:log_level] ||= :error
      super(**opts)
    end
  end
end
