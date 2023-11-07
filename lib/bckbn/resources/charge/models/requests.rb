# frozen_string_literal: true

module Bckbn
  module Charge
    CREATE_CHARGE_REQUEST_MEMBERS = %i[
      amount
      description
      source
    ].freeze

    CreateChargeRequest = Struct.new(*CREATE_CHARGE_REQUEST_MEMBERS, keyword_init: true)
  end
end
