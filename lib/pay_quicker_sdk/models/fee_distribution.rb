# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # FeeDistribution Model.
  class FeeDistribution < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Array[ReceiptDescriptions]]
    attr_accessor :description

    # Combination of the amount and currency type
    # @return [String]
    attr_accessor :formatted_amount

    # Fee percentage that the responsible account pays
    # @return [Float]
    attr_accessor :percentage

    # Fee responsibility types
    # @return [FeeResponsibilityParties]
    attr_accessor :responsibility

    # Fee responsibility source types
    # @return [FeeResponsibilitySources]
    attr_accessor :responsibility_source

    # Unique identifier representing the [source of
    # funds](#/rest/models/structures/source-token)
    # @return [String]
    attr_accessor :source_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['description'] = 'description'
      @_hash['formatted_amount'] = 'formattedAmount'
      @_hash['percentage'] = 'percentage'
      @_hash['responsibility'] = 'responsibility'
      @_hash['responsibility_source'] = 'responsibilitySource'
      @_hash['source_token'] = 'sourceToken'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        currency
        description
        formatted_amount
        percentage
        responsibility
        responsibility_source
        source_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = 1.02, currency = Currencies::USD,
                   description = SKIP, formatted_amount = '$0.05 USD',
                   percentage = SKIP, responsibility = SKIP,
                   responsibility_source = SKIP,
                   source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @description = description unless description == SKIP
      @formatted_amount = formatted_amount unless formatted_amount == SKIP
      @percentage = percentage unless percentage == SKIP
      @responsibility = responsibility unless responsibility == SKIP
      @responsibility_source = responsibility_source unless responsibility_source == SKIP
      @source_token = source_token unless source_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount'] ||= 1.02
      currency = hash['currency'] ||= Currencies::USD
      # Parameter is an array, so we need to iterate through it
      description = nil
      unless hash['description'].nil?
        description = []
        hash['description'].each do |structure|
          description << (ReceiptDescriptions.from_hash(structure) if structure)
        end
      end

      description = SKIP unless hash.key?('description')
      formatted_amount = hash['formattedAmount'] ||= '$0.05 USD'
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      responsibility =
        hash.key?('responsibility') ? hash['responsibility'] : SKIP
      responsibility_source =
        hash.key?('responsibilitySource') ? hash['responsibilitySource'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeeDistribution.new(amount,
                          currency,
                          description,
                          formatted_amount,
                          percentage,
                          responsibility,
                          responsibility_source,
                          source_token,
                          additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, description: #{@description},"\
      " formatted_amount: #{@formatted_amount}, percentage: #{@percentage}, responsibility:"\
      " #{@responsibility}, responsibility_source: #{@responsibility_source}, source_token:"\
      " #{@source_token}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect}, description:"\
      " #{@description.inspect}, formatted_amount: #{@formatted_amount.inspect}, percentage:"\
      " #{@percentage.inspect}, responsibility: #{@responsibility.inspect}, responsibility_source:"\
      " #{@responsibility_source.inspect}, source_token: #{@source_token.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
