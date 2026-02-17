# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the bank account
  # [required](#/rest/models/structures/bank-account-requirement) information
  class BankAccountRequirement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :bank_country

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :bank_currency

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [FeeConfiguration]
    attr_accessor :fee

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :source_country

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :source_currency

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Array[BankAccountRequiredFields]]
    attr_accessor :requirements

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_country'] = 'bankCountry'
      @_hash['bank_currency'] = 'bankCurrency'
      @_hash['fee'] = 'fee'
      @_hash['source_country'] = 'sourceCountry'
      @_hash['source_currency'] = 'sourceCurrency'
      @_hash['requirements'] = 'requirements'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_country
        bank_currency
        fee
        source_country
        source_currency
        requirements
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_country = SKIP, bank_currency = Currencies::USD,
                   fee = SKIP, source_country = SKIP,
                   source_currency = Currencies::USD, requirements = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @bank_country = bank_country unless bank_country == SKIP
      @bank_currency = bank_currency unless bank_currency == SKIP
      @fee = fee unless fee == SKIP
      @source_country = source_country unless source_country == SKIP
      @source_currency = source_currency unless source_currency == SKIP
      @requirements = requirements unless requirements == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_country = hash.key?('bankCountry') ? hash['bankCountry'] : SKIP
      bank_currency = hash['bankCurrency'] ||= Currencies::USD
      fee = FeeConfiguration.from_hash(hash['fee']) if hash['fee']
      source_country = hash.key?('sourceCountry') ? hash['sourceCountry'] : SKIP
      source_currency = hash['sourceCurrency'] ||= Currencies::USD
      # Parameter is an array, so we need to iterate through it
      requirements = nil
      unless hash['requirements'].nil?
        requirements = []
        hash['requirements'].each do |structure|
          requirements << (BankAccountRequiredFields.from_hash(structure) if structure)
        end
      end

      requirements = SKIP unless hash.key?('requirements')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountRequirement.new(bank_country,
                                 bank_currency,
                                 fee,
                                 source_country,
                                 source_currency,
                                 requirements,
                                 additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_country: #{@bank_country}, bank_currency: #{@bank_currency}, fee:"\
      " #{@fee}, source_country: #{@source_country}, source_currency: #{@source_currency},"\
      " requirements: #{@requirements}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_country: #{@bank_country.inspect}, bank_currency:"\
      " #{@bank_currency.inspect}, fee: #{@fee.inspect}, source_country:"\
      " #{@source_country.inspect}, source_currency: #{@source_currency.inspect}, requirements:"\
      " #{@requirements.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
