require 'spec_helper'
require 'json'

describe 'ChargesApi' do
  let(:api_instance) { SubfiPay::ChargesApi.new }
  let(:api_key) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:api_version) { "0.1.0" }
  let(:account_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.api_key['ApiKeyAuth'] = api_key
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/charges" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json",
      'X-Api-Version' => api_version,
      'X-Api-Key' => api_key,
      'X-Account-Id' => account_id
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of ChargesApi' do
    it 'should create an instance of ChargesApi' do
      expect(api_instance).to be_instance_of(SubfiPay::ChargesApi)
    end
  end

  # unit tests for list_charges
  # List all charges
  # @param x_api_version
  # @param content_type
  # @param [Hash] opts the optional parameters
  # @return [Array<Charge>]
  describe "#list_charges" do
    context "without query params" do
      before do
        stub_request(:get, [config.host, path].join)
          .with(headers: request_headers)
          .to_return(
            body: fixture("charges/list_200.json"),
            headers: response_headers,
            status: 200
          )
      end

      it 'should work' do
        res = api_instance.list_charges(api_version, account_id)

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(SubfiPay::ChargeResponse)
        expect(a_request(:get, [config.host, path].join).with(headers: request_headers)).to have_been_made.once

        expect(res.data.first.amount).to be_truthy
        expect(res.data.first.payment_method.card_profile).to be_truthy
        expect(res.data.first.payment_method.billing_address).to be_truthy
      end
    end

    context "with pagination" do
      before do
        stub_request(:get, [config.host, path, "?page=1&per_page=2"].join)
          .with(headers: request_headers)
          .to_return(
            body: fixture("charges/list_200.json"),
            headers: response_headers,
            status: 200
          )
      end

      it do
        res = api_instance.list_charges(api_version, account_id, page: 1, per_page: 2)

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(SubfiPay::ChargeResponse)
        expect(a_request(:get, [config.host, path, "?page=1&per_page=2"].join).with(headers: request_headers)).to have_been_made.once

        expect(res.data.first.amount).to be_truthy
        expect(res.data.first.payment_method.card_profile).to be_truthy
        expect(res.data.first.payment_method.billing_address).to be_truthy
      end
    end
  end

  # unit tests for charges_id_get
  # Retrieve a charge
  # @param x_api_version
  # @param content_type
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Charge]
  describe "#get_charge" do
    let(:charge_id) { "97b3f0e1-24ce-46e1-a4b8-d0a95258a4d6" }

    before do
      stub_request(:get, [config.host, "#{path}/#{charge_id}"].join)
        .with(headers: request_headers)
        .to_return(
          body: fixture("charges/retrieve_200.json"),
          headers: response_headers,
          status: 200
        )
    end

    it 'should work' do
      res = api_instance.get_charge(api_version, account_id, charge_id)

      expect(res).to be_a(SubfiPay::ChargeResponse)
    end
  end
end
