# frozen_string_literal: true

module Bckbn
  module Ach
    using Bckbn::CoreExt::StringExt

    BATCH_RESPONSE_MEMBERS = %i[
      id
      reference_id
      status
      account_number
      payment_count
      debit_total
      credit_total
      import_count
      client_identifier
      product_id
      partner_id
      created_at
      imported_at
      last_modified_at
      payment_identifiers
      logs
    ].freeze

    private_constant :BATCH_RESPONSE_MEMBERS

    BatchResponse = Struct.new(*BATCH_RESPONSE_MEMBERS, keyword_init: true)

    module ResponseShared
      def type
        self.class.name.split("::").last =~ /(.*)Response/
        ::Regexp.last_match(1).underscore.downcase
      end
    end

    [BatchResponse].each { |rc| rc.send(:include, ResponseShared) }
  end
end
