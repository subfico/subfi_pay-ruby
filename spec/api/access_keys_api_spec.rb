=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SubfiPay::AccessKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubfiPay::AccessKeysApi' do
  let(:api_instance) { SubfiPay::AccessKeysApi.new }
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
  let(:path) { "/access_keys" }
  let(:request_headers) do
    {
      "Content-Type"  => "application/json",
      'X-Api-Version' => api_version,
      'X-Api-Key' => api_key,
      'Expect' => ''
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of AccessKeysApi' do
    it 'should create an instance of AccessKeysApi' do
      expect(api_instance).to be_instance_of(SubfiPay::AccessKeysApi)
    end
  end

  # unit tests for delete_access_key
  # Delete an access key by ID
  # @param x_api_version
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_access_key test' do
    let(:access_key_id) { Faker::Alphanumeric.alphanumeric(number: 32) }

    before do
      stub_request(:delete, [config.host, "#{path}/#{access_key_id}"].join)
        .with(headers: request_headers)
        .to_return(
          status: 204,
          body: nil,
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.delete_access_key(api_version, access_key_id)

      expect(res).to be_nil
    end
  end

  # unit tests for list_access_keys
  # List all access keys
  # @param x_api_version
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of results to retrieve.
  # @option opts [Integer] :per_page Number of results per page.
  # @return [ListAccessKeysResponse]
  describe 'list_access_keys test' do
    before do
      stub_request(:get, [config.host, path].join)
        .with(headers: request_headers)
        .to_return(
          status: 200,
          body: fixture("access_keys/list_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.list_access_keys(api_version)

      expect(res).to be_instance_of(SubfiPay::ListAccessKeysResponse)
    end
  end

  # unit tests for roll_access_key
  # Roll an access key by ID
  # @param x_api_version
  # @param id
  # @param roll_access_key_request
  # @param [Hash] opts the optional parameters
  # @return [ListAccessKeysResponse]
  describe 'roll_access_key test' do
    let(:access_key_id) { Faker::Alphanumeric.alphanumeric(number: 32) }
    let(:body) do
      {
        roll_access_key_request: {
          new_key: Faker::Alphanumeric.alphanumeric(number: 32)
        }
      }
    end

    before do
      stub_request(:post, [config.host, "#{path}/#{access_key_id}/roll"].join)
        .with(headers: request_headers, body: body.to_json)
        .to_return(
          status: 200,
          body: fixture("access_keys/roll_200.json"),
          headers: response_headers
        )
    end

    it 'should work' do
      res = api_instance.roll_access_key(api_version, access_key_id, body)

      expect(res).to be_instance_of(SubfiPay::AccessKey)
    end
  end

end
