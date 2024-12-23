=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SubFiPay::AccountResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubFiPay::AccountResponse do
  let(:instance) { SubFiPay::AccountResponse.new }

  describe 'test an instance of AccountResponse' do
    it 'should create an instance of AccountResponse' do
      expect(instance).to be_instance_of(SubFiPay::AccountResponse)
    end
  end

  let(:attributes) { %w[name active worldpay_merchant_id created_at updated_at] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end

end
