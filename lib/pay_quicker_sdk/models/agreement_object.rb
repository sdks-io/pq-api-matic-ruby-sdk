# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # AgreementObject Model.
  class AgreementObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Program agreement content
    # @return [String]
    attr_accessor :content_base64

    # Full path of the URI to the content for the program agreement
    # @return [String]
    attr_accessor :url

    # Full path of the URI to the content for the program agreement
    # @return [AgreementTypes]
    attr_accessor :type

    # Full path of the URI to the content for the program agreement
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['content_base64'] = 'contentBase64'
      @_hash['url'] = 'url'
      @_hash['type'] = 'type'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        content_base64
        url
        type
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, content_base64 = SKIP, url = SKIP, type = SKIP,
                   links = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @content_base64 = content_base64 unless content_base64 == SKIP
      @url = url unless url == SKIP
      @type = type unless type == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      content_base64 = hash.key?('contentBase64') ? hash['contentBase64'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AgreementObject.new(token,
                          content_base64,
                          url,
                          type,
                          links,
                          additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, content_base64: #{@content_base64}, url: #{@url}, type:"\
      " #{@type}, links: #{@links}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, content_base64: #{@content_base64.inspect}, url:"\
      " #{@url.inspect}, type: #{@type.inspect}, links: #{@links.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
