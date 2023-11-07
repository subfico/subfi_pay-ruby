# frozen_string_literal: true

module Bckbn
  module Charge
    using Bckbn::CoreExt::StringExt

    CHARGE_RESPONSE_MEMBERS = %i[
      id
      amount
      direction
      posting
      posting_code
      posting_type
      status
      transaction_type
      logs
    ].freeze

    CHARGES_RESPONSE_MEMBERS = %i[
      charges
      page_number
      page_size
      has_previous_page
      has_next_page
      logs
    ].freeze

    private_constant :CHARGE_RESPONSE_MEMBERS

    ChargeResponse = Struct.new(*CHARGE_RESPONSE_MEMBERS, keyword_init: true)

    ChargesResponse = Struct.new(*CHARGES_RESPONSE_MEMBERS, keyword_init: true) do
      def initialize(**opts)
        charges = opts.delete("charges")
        super(opts)
        self.charges = charges.map { |c| ChargeResponse.new(c) }
      end
    end
  end
end
