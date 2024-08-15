=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BckbnPay::BalanceTransactionResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::BalanceTransactionResponse do
  let(:instance) { BckbnPay::BalanceTransactionResponse.new }

  describe 'test an instance of BalanceTransactionResponse' do
    it 'should create an instance of BalanceTransactionResponse' do
      expect(instance).to be_instance_of(BckbnPay::BalanceTransactionResponse)
    end
  end

  let(:attributes) { %w[amount charge_id fee net refund_id state type id created_at updated_at sub_merchant_id] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
