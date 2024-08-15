require 'spec_helper'
require 'json'

describe 'BalanceTransactionsApi' do
  let(:api_instance) { BckbnPay::BalanceTransactionsApi.new }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.access_token = Faker::Lorem.word
      c.host = Faker::Internet.domain_name
      c.scheme = 'http'
    end
  end
  let(:path) { '/balance_transactions' }
  let(:url) { [config.host, path].join }
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

  describe 'test an instance of BalanceTransactionsApi' do
    it 'should create an instance of BalanceTransactionsApi' do
      expect(api_instance).to be_instance_of(BckbnPay::BalanceTransactionsApi)
    end
  end

  # unit tests for balance_transactions_get
  # List all balance transactions
  # @param x_api_version
  # @param content_type
  # @param [Hash] opts the optional parameters
  # @return [BalanceTransactionsGet200Response]
  describe "#list_balance_transactions" do
    context "without query params" do
      before do
        stub_request(:get, url)
        .with(headers: request_headers)
        .to_return(
          body: fixture("balance_transactions/list_200.json"),
          headers: response_headers,
          status: 200
        )
      end

      it "should work" do
        res = api_instance.list_balance_transactions("0.1.0")

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(BckbnPay::BalanceTransactionResponse)
        expect(a_request(:get, url).with(headers: request_headers)).to have_been_made.once
      end
    end

    context "with pagination" do
      before do
        stub_request(:get, [url, "?page=1&per_page=2"].join)
        .with(headers: request_headers)
        .to_return(
          body: fixture("balance_transactions/list_200.json"),
          headers: response_headers,
          status: 200
        )
      end

      it do
        res = api_instance.list_balance_transactions("0.1.0", page: 1, per_page: 2)

        expect(res.data).to be_a(Array)
        expect(res.data.first).to be_a(BckbnPay::BalanceTransactionResponse)
        expect(a_request(:get, [url, "?page=1&per_page=2"].join).with(headers: request_headers)).to have_been_made.once
      end
    end
  end
end
