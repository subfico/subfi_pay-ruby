# frozen_string_literal: true

module Bckbn
  module Transaction
    Echeck = Struct.new(*%i[acc_type acc_num routing_num check_num], keyword_init: true) do
      def initialize(opts)
        valid_opts = opts.slice(*members)
        valid_opts.each { |key, value| public_send("#{key}=", value) }
      end
    end
  end
end
