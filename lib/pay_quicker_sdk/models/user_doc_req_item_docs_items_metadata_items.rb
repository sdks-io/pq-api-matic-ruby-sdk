# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # UserDocReqItemDocsItemsMetadataItems Model.
  class UserDocReqItemDocsItemsMetadataItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :data_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :field_type

    # TODO: Write general description for this method
    # @return [Array[UserDocReqItemDocsItemsMetadataItemsNameItems]]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data_type'] = 'dataType'
      @_hash['field_type'] = 'fieldType'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        data_type
        field_type
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(data_type = SKIP, field_type = SKIP, name = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @data_type = data_type unless data_type == SKIP
      @field_type = field_type unless field_type == SKIP
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      data_type = hash.key?('dataType') ? hash['dataType'] : SKIP
      field_type = hash.key?('fieldType') ? hash['fieldType'] : SKIP
      # Parameter is an array, so we need to iterate through it
      name = nil
      unless hash['name'].nil?
        name = []
        hash['name'].each do |structure|
          name << (UserDocReqItemDocsItemsMetadataItemsNameItems.from_hash(structure) if structure)
        end
      end

      name = SKIP unless hash.key?('name')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UserDocReqItemDocsItemsMetadataItems.new(data_type,
                                               field_type,
                                               name,
                                               additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} data_type: #{@data_type}, field_type: #{@field_type}, name: #{@name},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} data_type: #{@data_type.inspect}, field_type: #{@field_type.inspect}, name:"\
      " #{@name.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
