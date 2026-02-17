# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the [legend
  # format](#/rest/models/structures/electronic-wallet-requirement-format-legend
  # ) of the required information for a electronic wallet
  class ElectronicWalletRequirementFormatLegend < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :key

    # Localized requirement description for display purposes
    # @return [Array[Translation]]
    attr_accessor :descriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['descriptions'] = 'descriptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        key
        descriptions
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(key = SKIP, descriptions = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @key = key unless key == SKIP
      @descriptions = descriptions unless descriptions == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash.key?('key') ? hash['key'] : SKIP
      # Parameter is an array, so we need to iterate through it
      descriptions = nil
      unless hash['descriptions'].nil?
        descriptions = []
        hash['descriptions'].each do |structure|
          descriptions << (Translation.from_hash(structure) if structure)
        end
      end

      descriptions = SKIP unless hash.key?('descriptions')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ElectronicWalletRequirementFormatLegend.new(key,
                                                  descriptions,
                                                  additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key}, descriptions: #{@descriptions}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key.inspect}, descriptions: #{@descriptions.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
