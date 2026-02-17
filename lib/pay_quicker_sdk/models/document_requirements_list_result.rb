# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # DocumentRequirementsListResult Model.
  class DocumentRequirementsListResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[UserDocumentRequirementItem]]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [ListMetadata]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, meta = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      id = nil
      unless hash['id'].nil?
        id = []
        hash['id'].each do |structure|
          id << (UserDocumentRequirementItem.from_hash(structure) if structure)
        end
      end

      id = SKIP unless hash.key?('id')
      meta = ListMetadata.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      DocumentRequirementsListResult.new(id,
                                         meta,
                                         additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, meta: #{@meta}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, meta: #{@meta.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
