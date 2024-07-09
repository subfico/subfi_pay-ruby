# frozen_string_literal: true

require "spec_helper"

RSpec.describe BckbnPay::Configuration do
  let(:api_key) { Faker::Lorem.word }
  let(:scheme) { "http" }
  let(:host) { "localhost:3000" }

  it "forwards config to Bckbn object" do
    BckbnPay.configure do |config|
      config.api_key = api_key
      config.scheme = scheme
      config.host = host
    end

    client = BckbnPay::ApiClient.new

    expect(client.config.api_key).to eq(api_key)
    expect(client.config.scheme).to eq(scheme)
    expect(client.config.host).to eq(host)
  end
end
