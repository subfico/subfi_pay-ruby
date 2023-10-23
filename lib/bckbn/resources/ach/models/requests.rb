# frozen_string_literal: true

module Bckbn
  module Ach
    ORIGINATE_BATCH_REQUEST_MEMBERS = %i[
      payments
    ].freeze

    OriginateBatchRequest = Struct.new(*ORIGINATE_BATCH_REQUEST_MEMBERS, keyword_init: true) do
      def initialize(opts)
        payments = opts.fetch(:payments)
        self.payments = payments.map { |p| Bckbn::Transaction::Payment.new(p) }
      end

      def to_h
        h = super
        h[:payments] = h[:payments].map(&:to_h)
        h
      end
    end
  end
end
