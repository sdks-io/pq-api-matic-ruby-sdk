# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardPinObject Model.
  class PrepaidCardPinObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Card PIN](#/rest/models/structures/prepaid-card-pin) for ATM and Debit
    # usage
    # @return [String]
    attr_accessor :card_pin

    # [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a
    # two-leg card PIN reveal request sent directly from the client that
    # generally involves a second piece of data, such as the CVV code on the
    # back of the card.
    # @return [String]
    attr_accessor :token

    # [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a
    # two-leg card PIN reveal request sent directly from the client that
    # generally involves a second piece of data, such as the CVV code on the
    # back of the card.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_pin'] = 'cardPin'
      @_hash['token'] = 'token'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_pin
        token
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_pin = SKIP, token = SKIP, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_pin = card_pin unless card_pin == SKIP
      @token = token unless token == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_pin = hash.key?('cardPin') ? hash['cardPin'] : SKIP
      token = hash.key?('token') ? hash['token'] : SKIP
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
      PrepaidCardPinObject.new(card_pin,
                               token,
                               links,
                               additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_pin: #{@card_pin}, token: #{@token}, links: #{@links},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_pin: #{@card_pin.inspect}, token: #{@token.inspect}, links:"\
      " #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
