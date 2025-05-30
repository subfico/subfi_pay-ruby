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

# Unit tests for SubfiPay::PaymentIntentResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubfiPay::PaymentIntentResponse do
  let(:instance) { SubfiPay::PaymentIntentResponse.new }

  describe 'test an instance of PaymentIntentResponse' do
    it 'should create an instance of PaymentIntentResponse' do
      expect(instance).to be_instance_of(SubfiPay::PaymentIntentResponse)
    end
  end

  let(:attributes) { %w[id capture_method customer_id description metadata state created_at updated_at] }

  describe "encoding" do
    it "should be UTF-8" do
      instance.description = "foobar"
      expect(instance.description.encoding.to_s).to eq("UTF-8")
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
