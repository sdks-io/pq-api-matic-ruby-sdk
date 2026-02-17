# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Exchange rate
  class FxRate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :destination_amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :destination_currency

    # Combination of the amount and currency type
    # @return [String]
    attr_accessor :destination_formatted_amount

    # Exchange [rate](#/rest/models/structures/rate)
    # @return [Float]
    attr_accessor :rate

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :source_amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :source_currency

    # Combination of the amount and currency type
    # @return [String]
    attr_accessor :source_formatted_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['destination_amount'] = 'destinationAmount'
      @_hash['destination_currency'] = 'destinationCurrency'
      @_hash['destination_formatted_amount'] = 'destinationFormattedAmount'
      @_hash['rate'] = 'rate'
      @_hash['source_amount'] = 'sourceAmount'
      @_hash['source_currency'] = 'sourceCurrency'
      @_hash['source_formatted_amount'] = 'sourceFormattedAmount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        destination_amount
        destination_currency
        destination_formatted_amount
        rate
        source_amount
        source_currency
        source_formatted_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(destination_amount = SKIP,
                   destination_currency = Currencies::USD,
                   destination_formatted_amount = '$0.05 USD', rate = SKIP,
                   source_amount = 1.02, source_currency = Currencies::USD,
                   source_formatted_amount = '$0.05 USD',
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @destination_amount = destination_amount unless destination_amount == SKIP
      @destination_currency = destination_currency unless destination_currency == SKIP
      unless destination_formatted_amount == SKIP
        @destination_formatted_amount =
          destination_formatted_amount
      end
      @rate = rate unless rate == SKIP
      @source_amount = source_amount unless source_amount == SKIP
      @source_currency = source_currency unless source_currency == SKIP
      @source_formatted_amount = source_formatted_amount unless source_formatted_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      destination_amount =
        hash.key?('destinationAmount') ? hash['destinationAmount'] : SKIP
      destination_currency = hash['destinationCurrency'] ||= Currencies::USD
      destination_formatted_amount =
        hash['destinationFormattedAmount'] ||= '$0.05 USD'
      rate = hash.key?('rate') ? hash['rate'] : SKIP
      source_amount = hash['sourceAmount'] ||= 1.02
      source_currency = hash['sourceCurrency'] ||= Currencies::USD
      source_formatted_amount = hash['sourceFormattedAmount'] ||= '$0.05 USD'

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FxRate.new(destination_amount,
                 destination_currency,
                 destination_formatted_amount,
                 rate,
                 source_amount,
                 source_currency,
                 source_formatted_amount,
                 additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} destination_amount: #{@destination_amount}, destination_currency:"\
      " #{@destination_currency}, destination_formatted_amount: #{@destination_formatted_amount},"\
      " rate: #{@rate}, source_amount: #{@source_amount}, source_currency: #{@source_currency},"\
      " source_formatted_amount: #{@source_formatted_amount}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} destination_amount: #{@destination_amount.inspect}, destination_currency:"\
      " #{@destination_currency.inspect}, destination_formatted_amount:"\
      " #{@destination_formatted_amount.inspect}, rate: #{@rate.inspect}, source_amount:"\
      " #{@source_amount.inspect}, source_currency: #{@source_currency.inspect},"\
      " source_formatted_amount: #{@source_formatted_amount.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
