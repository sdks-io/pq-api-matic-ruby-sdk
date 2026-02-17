# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardDataTokenResult Model.
  class PrepaidCardDataTokenResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The processor type for the prepaid card
    # @return [CardProcessors]
    attr_accessor :card_processor_type

    # Value of the target resource
    # @return [String]
    attr_accessor :resource_value

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Purpose of the token
    # @return [TokenPurposes]
    attr_accessor :token_purpose_type

    # Full path of the URI to perform the request action against a prepaid card
    # that replaces the need to build the URL with query params.
    # @return [String]
    attr_accessor :url

    # Full path of the URI to perform the request action against a prepaid card
    # that replaces the need to build the URL with query params.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Full path of the URI to perform the request action against a prepaid card
    # that replaces the need to build the URL with query params.
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_processor_type'] = 'cardProcessorType'
      @_hash['resource_value'] = 'resourceValue'
      @_hash['token'] = 'token'
      @_hash['token_purpose_type'] = 'tokenPurposeType'
      @_hash['url'] = 'url'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        resource_value
        token
        url
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_processor_type = nil, token_purpose_type = nil,
                   resource_value = SKIP, token = SKIP, url = SKIP,
                   links = SKIP, meta = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_processor_type = card_processor_type
      @resource_value = resource_value unless resource_value == SKIP
      @token = token unless token == SKIP
      @token_purpose_type = token_purpose_type
      @url = url unless url == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_processor_type =
        hash.key?('cardProcessorType') ? hash['cardProcessorType'] : nil
      token_purpose_type =
        hash.key?('tokenPurposeType') ? hash['tokenPurposeType'] : nil
      resource_value = hash.key?('resourceValue') ? hash['resourceValue'] : SKIP
      token = hash.key?('token') ? hash['token'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')
      meta = MetadataItems.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaidCardDataTokenResult.new(card_processor_type,
                                     token_purpose_type,
                                     resource_value,
                                     token,
                                     url,
                                     links,
                                     meta,
                                     additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_processor_type: #{@card_processor_type}, resource_value:"\
      " #{@resource_value}, token: #{@token}, token_purpose_type: #{@token_purpose_type}, url:"\
      " #{@url}, links: #{@links}, meta: #{@meta}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_processor_type: #{@card_processor_type.inspect}, resource_value:"\
      " #{@resource_value.inspect}, token: #{@token.inspect}, token_purpose_type:"\
      " #{@token_purpose_type.inspect}, url: #{@url.inspect}, links: #{@links.inspect}, meta:"\
      " #{@meta.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
