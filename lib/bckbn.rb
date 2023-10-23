# frozen_string_literal: true

require "json"
require "forwardable"
require "logger"
require "net/http"
require "addressable"
require "bckbn/version"
require "bckbn/configuration"
require "bckbn/core_ext"
require "bckbn/connection"
require "bckbn/resources/transaction/api"
require "bckbn/resources/transaction/models/card"
require "bckbn/resources/transaction/models/echeck"
require "bckbn/resources/transaction/models/billing_address"
require "bckbn/resources/transaction/models/requests"
require "bckbn/resources/transaction/models/responses"
require "bckbn/resources/transaction/models/payment"

require "bckbn/resources/charge/api"
require "bckbn/resources/charge/models/requests"
require "bckbn/resources/charge/models/responses"

module Bckbn
  @config = Bckbn::Configuration.setup

  class << self
    extend Forwardable

    attr_reader :config

    def_delegators :@config, :access_token, :access_token=
    def_delegators :@config, :api_version, :api_version=
    def_delegators :@config, :api_base, :api_base=
    def_delegators :@config, :log_level, :log_level=
    def_delegators :@config, :merchant_id, :merchant_id=
    def_delegators :@config, :source_ip_address, :source_ip_address=
  end
end
