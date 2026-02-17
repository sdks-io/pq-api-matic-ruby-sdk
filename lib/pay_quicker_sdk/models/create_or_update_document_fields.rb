# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateOrUpdateDocumentFields Model.
  class CreateOrUpdateDocumentFields < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[DocumentDetails]]
    attr_accessor :fields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['fields'] = 'fields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        fields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(fields = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @fields = fields unless fields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (DocumentDetails.from_hash(structure) if structure)
        end
      end

      fields = SKIP unless hash.key?('fields')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateDocumentFields.new(fields,
                                       additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} fields: #{@fields}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} fields: #{@fields.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
