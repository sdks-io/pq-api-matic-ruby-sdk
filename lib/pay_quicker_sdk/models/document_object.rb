# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # DocumentObject Model.
  class DocumentObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :create_date

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [Array[DocumentDetails]]
    attr_accessor :fields

    # The name given to a computer file in order to distinguish it from other
    # files
    # @return [String]
    attr_accessor :filename

    # A label used to identify a type of data.  Acts like a file extension on
    # the internet.
    # @return [String]
    attr_accessor :mime_type

    # [Token](#/rest/models/structures/token) representing the document
    # @return [String]
    attr_accessor :token

    # [Token](#/rest/models/structures/token) representing the document
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['create_date'] = 'createDate'
      @_hash['fields'] = 'fields'
      @_hash['filename'] = 'filename'
      @_hash['mime_type'] = 'mimeType'
      @_hash['token'] = 'token'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        fields
        filename
        mime_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(create_date = nil,
                   token = 'docu-2053aaad-c1a5-45e2-a2da-f71287f32800',
                   links = nil, fields = SKIP, filename = SKIP,
                   mime_type = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @create_date = create_date
      @fields = fields unless fields == SKIP
      @filename = filename unless filename == SKIP
      @mime_type = mime_type unless mime_type == SKIP
      @token = token
      @links = links
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      create_date = if hash.key?('createDate')
                      (DateTimeHelper.from_rfc3339(hash['createDate']) if hash['createDate'])
                    end
      token = hash['token'] ||= 'docu-2053aaad-c1a5-45e2-a2da-f71287f32800'
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = nil unless hash.key?('links')
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (DocumentDetails.from_hash(structure) if structure)
        end
      end

      fields = SKIP unless hash.key?('fields')
      filename = hash.key?('filename') ? hash['filename'] : SKIP
      mime_type = hash.key?('mimeType') ? hash['mimeType'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      DocumentObject.new(create_date,
                         token,
                         links,
                         fields,
                         filename,
                         mime_type,
                         additional_properties)
    end

    def to_custom_create_date
      DateTimeHelper.to_rfc3339(create_date)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} create_date: #{@create_date}, fields: #{@fields}, filename: #{@filename},"\
      " mime_type: #{@mime_type}, token: #{@token}, links: #{@links}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} create_date: #{@create_date.inspect}, fields: #{@fields.inspect}, filename:"\
      " #{@filename.inspect}, mime_type: #{@mime_type.inspect}, token: #{@token.inspect}, links:"\
      " #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
