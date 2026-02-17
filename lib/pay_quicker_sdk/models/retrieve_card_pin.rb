# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # RetrieveCardPin Model.
  class RetrieveCardPin < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a
    # two-leg card PIN reveal request sent directly from the client that
    # generally involves a second piece of data, such as the CVV code on the
    # back of the card.
    # @return [String]
    attr_accessor :card_pin_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_pin_token'] = 'cardPinToken'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_pin_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_pin_token = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_pin_token = card_pin_token unless card_pin_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_pin_token = hash.key?('cardPinToken') ? hash['cardPinToken'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RetrieveCardPin.new(card_pin_token,
                          additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_pin_token: #{@card_pin_token}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_pin_token: #{@card_pin_token.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
