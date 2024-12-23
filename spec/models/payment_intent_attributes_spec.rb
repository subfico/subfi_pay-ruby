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

# Unit tests for SubFiPay::PaymentIntentAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubFiPay::PaymentIntentAttributes do
  let(:instance) { SubFiPay::PaymentIntentAttributes.new }

  describe 'test an instance of PaymentIntentAttributes' do
    it 'should create an instance of PaymentIntentAttributes' do
      expect(instance).to be_instance_of(SubFiPay::PaymentIntentAttributes)
    end
  end

  let(:attributes) { %w[amount payment_method_id capture_async connected_account_id description] }

  describe "encoding" do
    it "should be UTF-8" do
      instance.payment_method_id = "foobar"
      expect(instance.payment_method_id.encoding.to_s).to eq("UTF-8")
    end
  end

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
