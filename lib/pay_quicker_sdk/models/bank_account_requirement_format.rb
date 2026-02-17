# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the
  # [format](#/rest/models/structures/bank-account-requirement-format) of the
  # required information for a bank account
  class BankAccountRequirementFormat < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Example of a requirement generated from the validator(s)
    # @return [String]
    attr_accessor :example

    # Example of a requirement generated from the validator(s)
    # @return [Array[BankAccountRequirementFormatLegend]]
    attr_accessor :legend

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['example'] = 'example'
      @_hash['legend'] = 'legend'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        example
        legend
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(example = SKIP, legend = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @example = example unless example == SKIP
      @legend = legend unless legend == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      example = hash.key?('example') ? hash['example'] : SKIP
      # Parameter is an array, so we need to iterate through it
      legend = nil
      unless hash['legend'].nil?
        legend = []
        hash['legend'].each do |structure|
          legend << (BankAccountRequirementFormatLegend.from_hash(structure) if structure)
        end
      end

      legend = SKIP unless hash.key?('legend')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountRequirementFormat.new(example,
                                       legend,
                                       additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} example: #{@example}, legend: #{@legend}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} example: #{@example.inspect}, legend: #{@legend.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
