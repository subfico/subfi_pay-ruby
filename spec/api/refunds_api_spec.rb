=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::RefundsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RefundsApi' do
  before do
    # run before each test
    @api_instance = BckbnPay::RefundsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RefundsApi' do
    it 'should create an instance of RefundsApi' do
      expect(@api_instance).to be_instance_of(BckbnPay::RefundsApi)
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
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
