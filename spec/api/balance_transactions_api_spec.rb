require 'spec_helper'
require 'json'

describe 'BalanceTransactionsApi' do
  before do
    # run before each test
    @api_instance = BckbnPay::BalanceTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BalanceTransactionsApi' do
    it 'should create an instance of BalanceTransactionsApi' do
      expect(@api_instance).to be_instance_of(BckbnPay::BalanceTransactionsApi)
    end
  end

  # unit tests for balance_transactions_get
  # List all balance transactions
  # @param x_api_version
  # @param content_type
  # @param [Hash] opts the optional parameters
  # @return [BalanceTransactionsGet200Response]
  describe 'balance_transactions_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
