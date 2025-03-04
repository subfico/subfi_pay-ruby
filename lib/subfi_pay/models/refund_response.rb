=begin
#Subfi Pay API

#API for Subfi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module SubfiPay
  class RefundResponse
    attr_accessor :id

    attr_accessor :account_id

    attr_accessor :adjustment_reason

    attr_accessor :amount

    attr_accessor :customer_id

    attr_accessor :description

    attr_accessor :metadata

    attr_accessor :org_fee

    attr_accessor :org_per_txn_fee

    attr_accessor :org_rate

    attr_accessor :original_transaction_id

    attr_accessor :payment_intent_id

    attr_accessor :payment_method_id

    attr_accessor :platform_fee

    attr_accessor :platform_per_txn_fee

    attr_accessor :platform_rate

    attr_accessor :processor_authorization_id

    attr_accessor :processor_capture_id

    attr_accessor :processor_data

    attr_accessor :processor_refund_id

    attr_accessor :processor_sale_id

    attr_accessor :processor_void_id

    attr_accessor :state

    attr_accessor :succeeded_at

    attr_accessor :type

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :can_cancel

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'account_id' => :'account_id',
        :'adjustment_reason' => :'adjustment_reason',
        :'amount' => :'amount',
        :'customer_id' => :'customer_id',
        :'description' => :'description',
        :'metadata' => :'metadata',
        :'org_fee' => :'org_fee',
        :'org_per_txn_fee' => :'org_per_txn_fee',
        :'org_rate' => :'org_rate',
        :'original_transaction_id' => :'original_transaction_id',
        :'payment_intent_id' => :'payment_intent_id',
        :'payment_method_id' => :'payment_method_id',
        :'platform_fee' => :'platform_fee',
        :'platform_per_txn_fee' => :'platform_per_txn_fee',
        :'platform_rate' => :'platform_rate',
        :'processor_authorization_id' => :'processor_authorization_id',
        :'processor_capture_id' => :'processor_capture_id',
        :'processor_data' => :'processor_data',
        :'processor_refund_id' => :'processor_refund_id',
        :'processor_sale_id' => :'processor_sale_id',
        :'processor_void_id' => :'processor_void_id',
        :'state' => :'state',
        :'succeeded_at' => :'succeeded_at',
        :'type' => :'type',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'can_cancel' => :'can_cancel'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'account_id' => :'String',
        :'adjustment_reason' => :'String',
        :'amount' => :'Integer',
        :'customer_id' => :'String',
        :'description' => :'String',
        :'metadata' => :'Object',
        :'org_fee' => :'Integer',
        :'org_per_txn_fee' => :'Integer',
        :'org_rate' => :'Float',
        :'original_transaction_id' => :'String',
        :'payment_intent_id' => :'String',
        :'payment_method_id' => :'String',
        :'platform_fee' => :'Integer',
        :'platform_per_txn_fee' => :'Integer',
        :'platform_rate' => :'Float',
        :'processor_authorization_id' => :'String',
        :'processor_capture_id' => :'String',
        :'processor_data' => :'Object',
        :'processor_refund_id' => :'String',
        :'processor_sale_id' => :'String',
        :'processor_void_id' => :'String',
        :'state' => :'String',
        :'succeeded_at' => :'Time',
        :'type' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'can_cancel' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SubfiPay::RefundResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SubfiPay::RefundResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'adjustment_reason')
        self.adjustment_reason = attributes[:'adjustment_reason']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'org_fee')
        self.org_fee = attributes[:'org_fee']
      end

      if attributes.key?(:'org_per_txn_fee')
        self.org_per_txn_fee = attributes[:'org_per_txn_fee']
      end

      if attributes.key?(:'org_rate')
        self.org_rate = attributes[:'org_rate']
      end

      if attributes.key?(:'original_transaction_id')
        self.original_transaction_id = attributes[:'original_transaction_id']
      end

      if attributes.key?(:'payment_intent_id')
        self.payment_intent_id = attributes[:'payment_intent_id']
      end

      if attributes.key?(:'payment_method_id')
        self.payment_method_id = attributes[:'payment_method_id']
      end

      if attributes.key?(:'platform_fee')
        self.platform_fee = attributes[:'platform_fee']
      end

      if attributes.key?(:'platform_per_txn_fee')
        self.platform_per_txn_fee = attributes[:'platform_per_txn_fee']
      end

      if attributes.key?(:'platform_rate')
        self.platform_rate = attributes[:'platform_rate']
      end

      if attributes.key?(:'processor_authorization_id')
        self.processor_authorization_id = attributes[:'processor_authorization_id']
      end

      if attributes.key?(:'processor_capture_id')
        self.processor_capture_id = attributes[:'processor_capture_id']
      end

      if attributes.key?(:'processor_data')
        self.processor_data = attributes[:'processor_data']
      end

      if attributes.key?(:'processor_refund_id')
        self.processor_refund_id = attributes[:'processor_refund_id']
      end

      if attributes.key?(:'processor_sale_id')
        self.processor_sale_id = attributes[:'processor_sale_id']
      end

      if attributes.key?(:'processor_void_id')
        self.processor_void_id = attributes[:'processor_void_id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'succeeded_at')
        self.succeeded_at = attributes[:'succeeded_at']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'can_cancel')
        self.can_cancel = attributes[:'can_cancel']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_id == o.account_id &&
          adjustment_reason == o.adjustment_reason &&
          amount == o.amount &&
          customer_id == o.customer_id &&
          description == o.description &&
          metadata == o.metadata &&
          org_fee == o.org_fee &&
          org_per_txn_fee == o.org_per_txn_fee &&
          org_rate == o.org_rate &&
          original_transaction_id == o.original_transaction_id &&
          payment_intent_id == o.payment_intent_id &&
          payment_method_id == o.payment_method_id &&
          platform_fee == o.platform_fee &&
          platform_per_txn_fee == o.platform_per_txn_fee &&
          platform_rate == o.platform_rate &&
          processor_authorization_id == o.processor_authorization_id &&
          processor_capture_id == o.processor_capture_id &&
          processor_data == o.processor_data &&
          processor_refund_id == o.processor_refund_id &&
          processor_sale_id == o.processor_sale_id &&
          processor_void_id == o.processor_void_id &&
          state == o.state &&
          succeeded_at == o.succeeded_at &&
          type == o.type &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          can_cancel == o.can_cancel
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_id, adjustment_reason, amount, customer_id, description, metadata, org_fee, org_per_txn_fee, org_rate, original_transaction_id, payment_intent_id, payment_method_id, platform_fee, platform_per_txn_fee, platform_rate, processor_authorization_id, processor_capture_id, processor_data, processor_refund_id, processor_sale_id, processor_void_id, state, succeeded_at, type, created_at, updated_at, can_cancel].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SubfiPay.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
