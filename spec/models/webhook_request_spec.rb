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

# Unit tests for SubFiPay::WebhookRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SubFiPay::WebhookRequest do
  let(:instance) { SubFiPay::WebhookRequest.new }

  describe 'test an instance of WebhookRequest' do
    it 'should create an instance of WebhookRequest' do
      expect(instance).to be_instance_of(SubFiPay::WebhookRequest)
    end
  end

  let(:attributes) { %w[id event_id webhook_endpoint_id status_code error_message request_body response_body success retry_count created_at updated_at] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end


end
