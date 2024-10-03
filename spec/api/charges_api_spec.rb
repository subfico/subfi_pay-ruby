require 'spec_helper'
require 'json'

describe 'ChargesApi' do
  let(:api_instance) { BckbnPay::ChargesApi.new }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.access_token = Faker::Lorem.word
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/charges" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Authorization" => "Bearer #{config.access_token}",
      "Content-Type"  => "application/json",
      "Expect" => '',
      'X-Api-Version' => '0.3.0'
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
      expect(api_instance).to be_instance_of(BckbnPay::ChargesApi)
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
        res = api_instance.list_charges("0.3.0")

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(BckbnPay::ChargeResponse)
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
        res = api_instance.list_charges("0.3.0", page: 1, per_page: 2)

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(BckbnPay::ChargeResponse)
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
      res = api_instance.get_charge("0.3.0", charge_id)

      expect(res).to be_a(BckbnPay::ChargeResponse)
    end
  end

  # unit tests for charges_post
  # Create a charge
  # @param x_api_version
  # @param content_type
  # @param charges_post_request
  # @param [Hash] opts the optional parameters
  # @return [Charge]
  describe "#create_charge" do
    let(:payment_method_id) { SecureRandom.uuid }
    let(:body) do
      {
        charge: {
          amount: 25_000,
          description: "July Fees",
          payment_method_id:,
          immediate_capture: true
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
        .with(headers: request_headers, body: body.to_json)
        .to_return(
          body: fixture("charges/create_201.json"),
          headers: response_headers,
          status: 201
        )
    end

    it 'should work' do
      charge = BckbnPay::ChargeAttributes.new(body[:charge])
      res = api_instance.create_charge("0.3.0", { charge: charge.to_hash })

      expect(res).to be_a(BckbnPay::ChargeResponse)
    end
  end

  # unit tests for capture_charge
  # Capture a charge
  # @param x_api_version
  # @return [Charge]
  describe "#capture_charge" do
    let(:id) { SecureRandom.uuid }
    let(:path) { "/charges/#{id}/capture" }

    before do
      stub_request(:put, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          # re-using the same create response since it is the same object.
          body: fixture("charges/create_201.json"),
          headers: response_headers,
          status: 202
        )
    end

    it 'should work' do
      res = api_instance.capture_charge("0.3.0", id)

      expect(res).to be_a(BckbnPay::ChargeResponse)
    end
  end

  # unit tests for charges_cancel
  # Create a charge
  # @param x_api_version
  # @return [Charge]
  describe "#cancel_charge" do
    let(:id) { SecureRandom.uuid }
    let(:path) { "/charges/#{id}/cancel" }

    before do
      stub_request(:put, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          # re-using the same create response since it is the same object.
          body: fixture("charges/create_201.json"),
          headers: response_headers,
          status: 202
        )
    end

    it 'should work' do
      res = api_instance.cancel_charge("0.3.0", id)

      expect(res).to be_a(BckbnPay::ChargeResponse)
    end
  end
end
