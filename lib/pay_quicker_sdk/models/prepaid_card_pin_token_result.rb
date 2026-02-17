# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardPinTokenResult Model.
  class PrepaidCardPinTokenResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The processor type for the prepaid card
    # @return [CardProcessors]
    attr_accessor :card_processor_type

    # [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a
    # two-leg card PIN reveal request sent directly from the client that
    # generally involves a second piece of data, such as the CVV code on the
    # back of the card.
    # @return [String]
    attr_accessor :card_pin_token

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

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
      @_hash['card_pin_token'] = 'cardPinToken'
      @_hash['token'] = 'token'
      @_hash['url'] = 'url'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_processor_type
        card_pin_token
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

    def initialize(card_processor_type = SKIP, card_pin_token = SKIP,
                   token = SKIP, url = SKIP, links = SKIP, meta = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_processor_type = card_processor_type unless card_processor_type == SKIP
      @card_pin_token = card_pin_token unless card_pin_token == SKIP
      @token = token unless token == SKIP
      @url = url unless url == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_processor_type =
        hash.key?('cardProcessorType') ? hash['cardProcessorType'] : SKIP
      card_pin_token = hash.key?('cardPinToken') ? hash['cardPinToken'] : SKIP
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
      PrepaidCardPinTokenResult.new(card_processor_type,
                                    card_pin_token,
                                    token,
                                    url,
                                    links,
                                    meta,
                                    additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_processor_type: #{@card_processor_type}, card_pin_token:"\
      " #{@card_pin_token}, token: #{@token}, url: #{@url}, links: #{@links}, meta: #{@meta},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_processor_type: #{@card_processor_type.inspect}, card_pin_token:"\
      " #{@card_pin_token.inspect}, token: #{@token.inspect}, url: #{@url.inspect}, links:"\
      " #{@links.inspect}, meta: #{@meta.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
