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

# Unit tests for SubfiPay::RollAccessKeyAttributesAccessKey
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubfiPay::RollAccessKeyAttributesAccessKey do
  let(:instance) { SubfiPay::RollAccessKeyAttributesAccessKey.new }

  describe 'test an instance of RollAccessKeyAttributesAccessKey' do
    it 'should create an instance of RollAccessKeyAttributesAccessKey' do
      expect(instance).to be_instance_of(SubfiPay::RollAccessKeyAttributesAccessKey)
    end
  end

  let(:attributes) { %w[expires_at] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end

end
