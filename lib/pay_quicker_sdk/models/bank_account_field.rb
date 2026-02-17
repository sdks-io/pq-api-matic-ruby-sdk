# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # 1...N required
  # [fields](#/rest/models/structures/key-value-pair-bank-field-types-string) as
  # determined by call to get requirements
  class BankAccountField < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [BankAccountFields]
    attr_accessor :key

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(key = nil, value = nil, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @key = key
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash.key?('key') ? hash['key'] : nil
      value = hash.key?('value') ? hash['value'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountField.new(key,
                           value,
                           additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key}, value: #{@value}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key.inspect}, value: #{@value.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
