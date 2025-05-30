=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SubfiPay::SubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriptionsApi' do
  let(:api_instance) { SubfiPay::SubscriptionsApi.new }
  let(:api_key) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:api_version) { "0.1.0" }
  let(:account_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.api_key['X-Api-Key'] = api_key
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/subscriptions" }
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

  describe 'test an instance of SubscriptionsApi' do
    it 'should create an instance of SubscriptionsApi' do
      expect(api_instance).to be_instance_of(SubfiPay::SubscriptionsApi)
    end
  end

  # unit tests for create_subscription
  # Create a new subscription
  # @param x_api_version
  # @param subscription_create_request
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'create_subscription test' do
    let(:body) do
      {
        subscription: {
          plan_id: Faker::Alphanumeric.alphanumeric(number: 32),
          customer_id: Faker::Alphanumeric.alphanumeric(number: 32)
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
        .with(headers: request_headers, body: body.to_json)
        .to_return(
          status: 201,
          body: fixture("subscriptions/create_201.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.create_subscription(api_version, account_id, body)

      expect(res).to be_instance_of(SubfiPay::SubscriptionResponse)
    end
  end

  # unit tests for get_subscription
  # Retrieve a subscription by ID
  # @param x_api_version
  # @param id The ID of the subscription to retrieve
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'get_subscription test' do
    let(:subscription_id) { Faker::Alphanumeric.alphanumeric(number: 32) }

    before do
      stub_request(:get, [config.host, "#{path}/#{subscription_id}"].join)
        .with(headers: request_headers)
        .to_return(
          status: 200,
          body: fixture("subscriptions/show_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.get_subscription(api_version, account_id, subscription_id)

      expect(res).to be_instance_of(SubfiPay::SubscriptionResponse)
    end
  end

end
