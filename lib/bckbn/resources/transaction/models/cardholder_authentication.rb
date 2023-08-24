# frozen_string_literal: true

module Bckbn
  module Transaction
    CardholderAuthentication = Struct.new(
      *%i[authentication_value], keyword_init: true
    ) do
      def initialize(opts)
        valid_opts = opts.slice(*members)
        valid_opts.each { |key, value| public_send("#{key}=", value) }
      end
    end
  end
end
