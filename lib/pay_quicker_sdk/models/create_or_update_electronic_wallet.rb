# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateOrUpdateElectronicWallet Model.
  class CreateOrUpdateElectronicWallet < BaseModel
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

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Array[ElectronicWalletField]]
    attr_accessor :fields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['electronic_wallet_country'] = 'electronicWalletCountry'
      @_hash['electronic_wallet_currency'] = 'electronicWalletCurrency'
      @_hash['fields'] = 'fields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        electronic_wallet_country
        electronic_wallet_currency
        fields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = SKIP, electronic_wallet_country = SKIP,
                   electronic_wallet_currency = Currencies::USD, fields = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @type = type unless type == SKIP
      unless electronic_wallet_country == SKIP
        @electronic_wallet_country =
          electronic_wallet_country
      end
      unless electronic_wallet_currency == SKIP
        @electronic_wallet_currency =
          electronic_wallet_currency
      end
      @fields = fields unless fields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      electronic_wallet_country =
        hash.key?('electronicWalletCountry') ? hash['electronicWalletCountry'] : SKIP
      electronic_wallet_currency =
        hash['electronicWalletCurrency'] ||= Currencies::USD
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (ElectronicWalletField.from_hash(structure) if structure)
        end
      end

      fields = SKIP unless hash.key?('fields')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateElectronicWallet.new(type,
                                         electronic_wallet_country,
                                         electronic_wallet_currency,
                                         fields,
                                         additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, electronic_wallet_country: #{@electronic_wallet_country},"\
      " electronic_wallet_currency: #{@electronic_wallet_currency}, fields: #{@fields},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, electronic_wallet_country:"\
      " #{@electronic_wallet_country.inspect}, electronic_wallet_currency:"\
      " #{@electronic_wallet_currency.inspect}, fields: #{@fields.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
