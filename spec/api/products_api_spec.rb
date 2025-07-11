=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SubfiPay::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = SubfiPay::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(SubfiPay::ProductsApi)
    end
  end

  # unit tests for create_product
  # Create a new product
  # @param x_api_version 
  # @param x_account_id 
  # @param product_create_request 
  # @param [Hash] opts the optional parameters
  # @return [ProductResponse]
  describe 'create_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_products
  # List all products
  # @param x_api_version 
  # @param x_account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of results to retrieve.
  # @option opts [Integer] :per_page Number of results per page.
  # @return [ListProductsResponse]
  describe 'list_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_product
  # Update a product by ID
  # @param x_api_version 
  # @param x_account_id 
  # @param id The ID of the product to update
  # @param product_update_request 
  # @param [Hash] opts the optional parameters
  # @return [ProductResponse]
  describe 'update_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
