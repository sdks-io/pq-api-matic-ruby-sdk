# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardDataObject Model.
  class PrepaidCardDataObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique number on the prepaid card
    # @return [Float]
    attr_accessor :card_number

    # Three- or four-digit [Card Verification Value
    # (CVV)](#/rest/models/structures/cvv) number displayed on the back of a
    # credit or debit card
    # @return [String]
    attr_accessor :cvv_number

    # Date that the card will expire
    # @return [String]
    attr_accessor :expiration

    # Name of the card's owner
    # @return [String]
    attr_accessor :name_on_card

    # A token used to reveal prepaid card information in the form of image data
    # (base64) or JSON.
    # @return [String]
    attr_accessor :token

    # A token used to reveal prepaid card information in the form of image data
    # (base64) or JSON.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_number'] = 'cardNumber'
      @_hash['cvv_number'] = 'cvvNumber'
      @_hash['expiration'] = 'expiration'
      @_hash['name_on_card'] = 'nameOnCard'
      @_hash['token'] = 'token'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_number
        cvv_number
        expiration
        name_on_card
        token
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_number = SKIP, cvv_number = SKIP, expiration = SKIP,
                   name_on_card = SKIP, token = SKIP, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_number = card_number unless card_number == SKIP
      @cvv_number = cvv_number unless cvv_number == SKIP
      @expiration = expiration unless expiration == SKIP
      @name_on_card = name_on_card unless name_on_card == SKIP
      @token = token unless token == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_number = hash.key?('cardNumber') ? hash['cardNumber'] : SKIP
      cvv_number = hash.key?('cvvNumber') ? hash['cvvNumber'] : SKIP
      expiration = hash.key?('expiration') ? hash['expiration'] : SKIP
      name_on_card = hash.key?('nameOnCard') ? hash['nameOnCard'] : SKIP
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
      PrepaidCardDataObject.new(card_number,
                                cvv_number,
                                expiration,
                                name_on_card,
                                token,
                                links,
                                additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_number: #{@card_number}, cvv_number: #{@cvv_number}, expiration:"\
      " #{@expiration}, name_on_card: #{@name_on_card}, token: #{@token}, links: #{@links},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_number: #{@card_number.inspect}, cvv_number: #{@cvv_number.inspect},"\
      " expiration: #{@expiration.inspect}, name_on_card: #{@name_on_card.inspect}, token:"\
      " #{@token.inspect}, links: #{@links.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
