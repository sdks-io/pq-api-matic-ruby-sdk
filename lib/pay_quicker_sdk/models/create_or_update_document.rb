# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateOrUpdateDocument Model.
  class CreateOrUpdateDocument < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreateOrUpdateDocumentFields]
    attr_accessor :fields

    # Document to be uploaded
    # @return [Object]
    attr_accessor :upload

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['fields'] = 'fields'
      @_hash['upload'] = 'upload'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        fields
        upload
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(fields = SKIP, upload = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @fields = fields unless fields == SKIP
      @upload = upload unless upload == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      fields = CreateOrUpdateDocumentFields.from_hash(hash['fields']) if hash['fields']
      upload = hash.key?('upload') ? hash['upload'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateDocument.new(fields,
                                 upload,
                                 additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} fields: #{@fields}, upload: #{@upload}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} fields: #{@fields.inspect}, upload: #{@upload.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
