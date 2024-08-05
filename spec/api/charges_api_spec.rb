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
      'User-Agent' => 'OpenAPI-Generator/0.1.0/ruby',
      'X-Api-Version' => '0.1.0'
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

  # unit tests for charges_get
  # List all charges
  # @param x_api_version
  # @param content_type
  # @param [Hash] opts the optional parameters
  # @return [Array<Charge>]
  describe 'charges_get test' do
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
      res = api_instance.charges_get(config.access_token, "0.1.0")

      expect(res.data).to be_a(Array)
      expect(res.data.first).to be_a(BckbnPay::Charge)
    end
  end

  # unit tests for charges_id_get
  # Retrieve a charge
  # @param x_api_version
  # @param content_type
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Charge]
  describe "#charges_id_get" do
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
      res = api_instance.charges_id_get(config.access_token, "0.1.0", charge_id)

      expect(res).to be_a(BckbnPay::Charge)
    end
  end

  # unit tests for charges_post
  # Create a charge
  # @param x_api_version
  # @param content_type
  # @param charges_post_request
  # @param [Hash] opts the optional parameters
  # @return [Charge]
  describe "#charges_post" do
    let(:payment_method_id) { SecureRandom.uuid }
    let(:body) do
      {
        amount: 25_000,
        payment_method_id:,
        description: "July Fees"
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
      res = api_instance.charges_post(config.access_token, "0.1.0", body)

      expect(res).to be_a(BckbnPay::Charge)
    end
  end
end
