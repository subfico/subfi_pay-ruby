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

# Unit tests for BckbnPay::SubMerchantsPostRequestSubMerchant
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::SubMerchantsPostRequestSubMerchant do
  let(:instance) { BckbnPay::SubMerchantsPostRequestSubMerchant.new }

  describe 'test an instance of SubMerchantsPostRequestSubMerchant' do
    it 'should create an instance of SubMerchantsPostRequestSubMerchant' do
      expect(instance).to be_instance_of(BckbnPay::SubMerchantsPostRequestSubMerchant)
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      expect(instance.respond_to?(:name)).to eq(true)
    end
  end

  describe 'test attribute "worldpay_merchant_id"' do
    it 'should work' do
      expect(instance.respond_to?(:worldpay_merchant_id)).to eq(true)
    end
  end
end
