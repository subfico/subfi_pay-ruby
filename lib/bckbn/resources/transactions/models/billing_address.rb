# frozen_string_literal: true

module Bckbn
  module Transaction
    BillingAddress = Struct.new(
      *%i[name address_line_1 city state country zip email phone], keyword_init: true
    ) do
      def initialize(opts)
        valid_opts = opts.slice(*members)
        valid_opts.each { |key, value| public_send("#{key}=", value) }
      end
    end
  end
end
