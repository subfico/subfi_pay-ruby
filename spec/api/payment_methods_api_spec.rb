=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require "spec_helper"
require "json"

# Unit tests for SubFiPay::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PaymentMethodsApi" do
  let(:api_instance) { SubFiPay::PaymentMethodsApi.new }
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
  let(:access_token) { Faker::Lorem.word }
  let(:path) { "/payment_methods" }
  let(:url) { [config.host, path].join }
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
      "Accept"        =>  "application/json",
      "Content-Type"  => "application/json"
    }
  end

  before do
    SubFiPay.configure do |c|
      c.access_token = access_token
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end

  describe "test an instance of PaymentMethodsApi" do
    it "should create an instance of PaymentMethodsApi" do
      expect(api_instance).to be_instance_of(SubFiPay::PaymentMethodsApi)
    end
  end

  # unit tests for payment_methods_id_get
  # Retrieve a payment method
  # @param x_api_version
  # @param content_type
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe "payment_methods_id_get test" do
    let(:id) { SecureRandom.uuid }

    before do
      stub_request(:get, url + "/#{id}")
      .with(headers: request_headers.merge({ 'X-Account-Id' => account_id }))
      .to_return(
        body: fixture("payment_methods/get_#{type}_200.json"),
        headers: response_headers,
        status: 200
      )
    end

    context "with card" do
      let(:type) { "card" }

      it "should work" do
        res = api_instance.get_payment_method(api_version, account_id, id)

        expect(res).to be_a(SubFiPay::PaymentMethodResponse)
        expect(a_request(:get, url + "/#{id}").with(headers: request_headers)).to have_been_made.once

        expect(res.billing_address).to be_truthy
        expect(res.card_profile).to be_truthy
      end
    end

    context "with bank account" do
      let(:type) { "bank_account" }

      it "should work" do
        res = api_instance.get_payment_method(api_version, account_id, id)

        expect(res).to be_a(SubFiPay::PaymentMethodResponse)
        expect(a_request(:get, url + "/#{id}").with(headers: request_headers)).to have_been_made.once

        expect(res.billing_address).to be_truthy
        expect(res.bank_account_profile).to be_truthy
      end
    end
  end

  # unit tests for list_payment_methods
  # List all payment methods
  # @param x_api_version
  # @param customer_id
  # @param [Hash] opts the optional parameters
  # @return [ListPaymentMethodsResponse]
  describe "#list_payment_methods" do
    let(:customer_id) { SecureRandom.uuid }
    let(:page) { 1 }
    let(:per_page) { 10 }

    before do
      stub_request(:get, url)
        .with(headers: request_headers, query: { customer_id: customer_id, page: page, per_page: per_page })
        .to_return(
          body: fixture("payment_methods/list_200.json"),
          headers: response_headers.merge({ 'X-Account-Id' => account_id }),
          status: 200
        )
    end

    it "should work" do
      res = api_instance.list_payment_methods(api_version, account_id, customer_id, { page: page, per_page: per_page })

      expect(res).to be_a(SubFiPay::ListPaymentMethodsResponse)
      expect(a_request(:get, url).with(query: { customer_id: customer_id, page: page, per_page: per_page }, headers: request_headers)).to have_been_made.once
    end
  end

  # unit tests for create_payment_method
  # Create a payment method
  # @param x_api_version
  # @param content_type
  # @param payment_methods_post_request
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe "#create_payment_method" do
    context "with card" do
      let(:body) do
        {
          payment_method: {
            type: "Card",
            billing_address_attributes: {
              country: "US",
              postal_code: "78704"
            },
            card_profile_attributes: {
              encrypted_card_number: "3333333333333333",
              exp_month: 1,
              exp_year: 2027,
              cvc: 123
            }
          }
        }
      end

      before do
        stub_request(:post, url)
          .with(headers: request_headers, body: body.to_json)
          .to_return(
            body: fixture("payment_methods/create_card_201.json"),
            headers: response_headers.merge({ 'X-Account-Id' => account_id }),
            status: 201
          )
      end

      it "should work" do
        pm = SubFiPay::PaymentMethodAttributes.new(body[:payment_method])
        res = api_instance.create_payment_method(api_version, account_id, { payment_method: pm.to_hash })

        expect(res).to be_a(SubFiPay::PaymentMethodResponse)
        expect(a_request(:post, url).with(body: body.to_json, headers: request_headers)).to have_been_made.once
      end
    end

    context "with bank_account" do
      let(:body) do
        {
          payment_method: {
            type: "BankAccount",
            billing_address_attributes: {
              country: "US",
              postal_code: "78704"
            },
            bank_account_profile_attributes: {
              encrypted_account_number: "3333333333333333",
              account_holder_name: "John Doe",
              account_type: "checking",
              routing_number: "012345678",
              bank_name: "Chase"
            }
          }
        }
      end

      before do
        stub_request(:post, url)
          .with(headers: request_headers, body: body.to_json)
          .to_return(
            body: fixture("payment_methods/create_card_201.json"),
            headers: response_headers,
            status: 201
          )
      end

      it "should work" do
        pm = SubFiPay::PaymentMethodAttributes.new(body[:payment_method])
        res = api_instance.create_payment_method(api_version, account_id, { payment_method: pm.to_hash })

        expect(res).to be_a(SubFiPay::PaymentMethodResponse)
        expect(a_request(:post, url).with(body: body.to_json, headers: request_headers)).to have_been_made.once
      end
    end
  end
end
