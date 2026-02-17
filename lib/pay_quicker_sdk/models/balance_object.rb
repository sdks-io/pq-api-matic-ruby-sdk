# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # BalanceObject Model.
  class BalanceObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Amount of money in the account
    # @return [Float]
    attr_accessor :amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Combination of the amount and currency type
    # @return [String]
    attr_accessor :formatted_amount

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['formatted_amount'] = 'formattedAmount'
      @_hash['token'] = 'token'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = 0, currency = Currencies::USD,
                   formatted_amount = '$0.05 USD', token = nil, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @currency = currency
      @formatted_amount = formatted_amount
      @token = token
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount'] ||= 0
      currency = hash['currency'] ||= Currencies::USD
      formatted_amount = hash['formattedAmount'] ||= '$0.05 USD'
      token = hash.key?('token') ? hash['token'] : nil
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
      BalanceObject.new(amount,
                        currency,
                        formatted_amount,
                        token,
                        links,
                        additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, formatted_amount:"\
      " #{@formatted_amount}, token: #{@token}, links: #{@links}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect},"\
      " formatted_amount: #{@formatted_amount.inspect}, token: #{@token.inspect}, links:"\
      " #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
