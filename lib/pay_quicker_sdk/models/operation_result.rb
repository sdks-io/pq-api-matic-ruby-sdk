# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # OperationResult Model.
  class OperationResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The result of the api operation
    # @return [TrueClass | FalseClass]
    attr_accessor :result

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['result'] = 'result'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        result
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(result = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @result = result unless result == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      result = hash.key?('result') ? hash['result'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      OperationResult.new(result,
                          additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} result: #{@result}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} result: #{@result.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
