# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Validator
  # type](#/rest/models/structures/bank-account-requirement-validator) that for
  # the required bank account information.
  class BankAccountRequirementValidator < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Validator
    # types](#/rest/models/structures/bank-account-requirement-validator) for
    # the required bank account information.
    # @return [ValidatorTypes]
    attr_accessor :validator_type

    # Validation regular expression
    # @return [String]
    attr_accessor :expression

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['validator_type'] = 'validatorType'
      @_hash['expression'] = 'expression'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        validator_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(expression = nil, validator_type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @validator_type = validator_type unless validator_type == SKIP
      @expression = expression
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      expression = hash.key?('expression') ? hash['expression'] : nil
      validator_type = hash.key?('validatorType') ? hash['validatorType'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountRequirementValidator.new(expression,
                                          validator_type,
                                          additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} validator_type: #{@validator_type}, expression: #{@expression},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} validator_type: #{@validator_type.inspect}, expression:"\
      " #{@expression.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
