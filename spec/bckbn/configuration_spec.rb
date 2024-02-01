# frozen_string_literal: true

require "spec_helper"

RSpec.describe Bckbn::Configuration do
  let(:access_token) { Faker::Lorem.word }
  let(:api_version) { Faker::Lorem.word }
  let(:api_base) { Faker::Internet.url }
  let(:log_level) { Faker::Lorem.word }
  let(:worldpay_merchant_id) { Faker::Lorem.word }

  it "forwards config to Bckbn object" do
    Bckbn.access_token = access_token
    Bckbn.api_version = api_version
    Bckbn.api_base = api_base
    Bckbn.log_level = log_level
    Bckbn.worldpay_merchant_id = worldpay_merchant_id

    expect(Bckbn.access_token).to eq(access_token)
    expect(Bckbn.api_version).to eq(api_version)
    expect(Bckbn.api_base).to eq(api_base)
    expect(Bckbn.log_level).to eq(log_level)
    expect(Bckbn.worldpay_merchant_id).to eq(worldpay_merchant_id)

    expect(Bckbn.config.access_token).to eq(access_token)
    expect(Bckbn.config.api_version).to eq(api_version)
    expect(Bckbn.config.api_base).to eq(api_base)
    expect(Bckbn.config.log_level).to eq(log_level)
    expect(Bckbn.config.worldpay_merchant_id).to eq(worldpay_merchant_id)
  end
end
