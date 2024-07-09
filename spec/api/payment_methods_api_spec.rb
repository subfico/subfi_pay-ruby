=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentMethodsApi' do
  before do
    # run before each test
    @api_instance = BckbnPay::PaymentMethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethodsApi' do
    it 'should create an instance of PaymentMethodsApi' do
      expect(@api_instance).to be_instance_of(BckbnPay::PaymentMethodsApi)
    end
  end

  # unit tests for payment_methods_id_get
  # Retrieve a payment method
  # @param x_api_version 
  # @param content_type 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe 'payment_methods_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for payment_methods_post
  # Create a payment method
  # @param x_api_version 
  # @param content_type 
  # @param payment_methods_post_request 
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe 'payment_methods_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
