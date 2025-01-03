=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SubfiPay::RefundsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RefundsApi' do
  let(:api_instance) { SubfiPay::RefundsApi.new }
  let(:account_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
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
  let(:path) { "/refunds" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json",
      'X-Api-Version' => api_version,
      'X-Api-Key' => api_key
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of RefundsApi' do
    it 'should create an instance of RefundsApi' do
      expect(api_instance).to be_instance_of(SubfiPay::RefundsApi)
    end
  end

  # unit tests for refunds_post
  # Create a refund
  # @param x_api_version
  # @param content_type
  # @param refunds_post_request
  # @param [Hash] opts the optional parameters
  # @return [Refund]
  describe 'refunds_post test' do
    let(:body) do
      {
        refund: {
          amount: 14500,
          charge_id: SecureRandom.uuid
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
      .with(headers: request_headers, body: body.to_json)
      .to_return(
        body: fixture("refunds/create_201.json"),
        headers: response_headers,
        status: 201
      )
    end

    it 'should work' do
      res = api_instance.create_refund(api_version, account_id, body)

      expect(res).to be_a(SubfiPay::RefundResponse)
      expect(a_request(:post, [config.host, path].join).with(headers: request_headers, body: body.to_json)).to have_been_made.once
    end
  end

  # unit tests for cancel_refund
  # Cancel a refund
  # @param x_api_version
  # @return [Refund]
  describe "cancel_refund" do
    let(:id) { SecureRandom.uuid }
    let(:path) { "/refunds/#{id}/cancel" }

    before do
      stub_request(:put, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          # re-using the same create response since it is the same object.
          body: fixture("refunds/create_201.json"),
          headers: response_headers,
          status: 202
        )
    end

    it 'should work' do
      res = api_instance.cancel_refund(api_version, account_id, id)

      expect(res).to be_a(SubfiPay::RefundResponse)
    end
  end

  describe "list refunds" do
    let(:charge_id) { SecureRandom.uuid }
    let(:path) { "/refunds?charge_id=#{charge_id}" }

    before do
      stub_request(:get, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          body: fixture("refunds/list_200.json"),
          headers: response_headers,
          status: 200
        )
    end

    it 'should work' do
      res = api_instance.list_refunds(api_version, account_id, charge_id)

      expect(res).to be_a(SubfiPay::ListRefundsResponse)
    end

  end

  describe "get refund" do
    let(:id) { SecureRandom.uuid }
    let(:path) { "/refunds/#{id}" }

    before do
      stub_request(:get, [config.host, path].join)
      .with(headers: request_headers)
      .to_return(
        # re-using the same create response since it is the same object.
        body: fixture("refunds/create_201.json"),
        headers: response_headers,
        status: 200
      )
    end

    it 'should work' do
      res = api_instance.get_refund(api_version, account_id, id)

      expect(res).to be_a(SubfiPay::RefundResponse)
    end
  end
end
