# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the electronic wallet
  # [required](#/rest/models/structures/electronic-wallet-type) configuration
  class ElectronicWalletType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name of the electronic wallet
    # @return [ElectronicWalletTypes]
    attr_accessor :type

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :electronic_wallet_country

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :electronic_wallet_currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['electronic_wallet_country'] = 'electronicWalletCountry'
      @_hash['electronic_wallet_currency'] = 'electronicWalletCurrency'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = nil, electronic_wallet_country = nil,
                   electronic_wallet_currency = Currencies::USD,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @type = type
      @electronic_wallet_country = electronic_wallet_country
      @electronic_wallet_currency = electronic_wallet_currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : nil
      electronic_wallet_country =
        hash.key?('electronicWalletCountry') ? hash['electronicWalletCountry'] : nil
      electronic_wallet_currency =
        hash['electronicWalletCurrency'] ||= Currencies::USD

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ElectronicWalletType.new(type,
                               electronic_wallet_country,
                               electronic_wallet_currency,
                               additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, electronic_wallet_country: #{@electronic_wallet_country},"\
      " electronic_wallet_currency: #{@electronic_wallet_currency}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, electronic_wallet_country:"\
      " #{@electronic_wallet_country.inspect}, electronic_wallet_currency:"\
      " #{@electronic_wallet_currency.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
