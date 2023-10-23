# frozen_string_literal: true

module Bckbn
  module Transaction
    MEMBERS = %i[
      account_number
      receiver
      sec_code
      description
      transaction_type
      amount
      service_type
      purpose
      client_identifier
    ].freeze

    Payment = Struct.new(*MEMBERS, keyword_init: true) do
      def initialize(opts)
        valid_opts = opts.slice(*members)
        valid_opts.each { |key, value| public_send("#{key}=", value) }
      end
    end
  end
end
