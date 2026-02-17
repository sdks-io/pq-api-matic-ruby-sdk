# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the required [bank account
  # field](#/rest/models/structures/bank-account-required-fields) objects
  class BankAccountRequiredFields < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Classifies the
    # [format](#/rest/models/structures/bank-account-requirement-format) of the
    # required information for a bank account
    # @return [BankAccountRequirementFormat]
    attr_accessor :format

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [BankAccountFields]
    attr_accessor :requirement

    # Localized requirement description for display purposes
    # @return [Array[Translation]]
    attr_accessor :description

    # Localized requirement description for display purposes
    # @return [Array[BankAccountRequirementValidator]]
    attr_accessor :validators

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['format'] = 'format'
      @_hash['requirement'] = 'requirement'
      @_hash['description'] = 'description'
      @_hash['validators'] = 'validators'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        format
        requirement
        description
        validators
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(format = SKIP, requirement = SKIP, description = SKIP,
                   validators = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @format = format unless format == SKIP
      @requirement = requirement unless requirement == SKIP
      @description = description unless description == SKIP
      @validators = validators unless validators == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      format = BankAccountRequirementFormat.from_hash(hash['format']) if hash['format']
      requirement = hash.key?('requirement') ? hash['requirement'] : SKIP
      # Parameter is an array, so we need to iterate through it
      description = nil
      unless hash['description'].nil?
        description = []
        hash['description'].each do |structure|
          description << (Translation.from_hash(structure) if structure)
        end
      end

      description = SKIP unless hash.key?('description')
      # Parameter is an array, so we need to iterate through it
      validators = nil
      unless hash['validators'].nil?
        validators = []
        hash['validators'].each do |structure|
          validators << (BankAccountRequirementValidator.from_hash(structure) if structure)
        end
      end

      validators = SKIP unless hash.key?('validators')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountRequiredFields.new(format,
                                    requirement,
                                    description,
                                    validators,
                                    additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} format: #{@format}, requirement: #{@requirement}, description:"\
      " #{@description}, validators: #{@validators}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} format: #{@format.inspect}, requirement: #{@requirement.inspect},"\
      " description: #{@description.inspect}, validators: #{@validators.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
