# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateOrUpdateBankAccount Model.
  class CreateOrUpdateBankAccount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account [ownership types](#/rest/models/structures/bank-account-ownership)
    # @return [BankAccountOwnership]
    attr_accessor :bank_account_ownership_type

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

    # User-supplied description of the bank account for reference
    # @return [String]
    attr_accessor :description

    # User-supplied description of the bank account for reference
    # @return [Array[BankAccountField]]
    attr_accessor :fields

    # Financial purpose of the [bank
    # account](#/rest/models/structures/bank-account-type)
    # @return [BankAccountTypes]
    attr_accessor :type

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [TransferMethodTypes]
    attr_accessor :transfer_method_type

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [BankAccountAddress]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_account_ownership_type'] = 'bankAccountOwnershipType'
      @_hash['bank_country'] = 'bankCountry'
      @_hash['bank_currency'] = 'bankCurrency'
      @_hash['description'] = 'description'
      @_hash['fields'] = 'fields'
      @_hash['type'] = 'type'
      @_hash['transfer_method_type'] = 'transferMethodType'
      @_hash['address'] = 'address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_account_ownership_type
        bank_country
        bank_currency
        description
        fields
        type
        transfer_method_type
        address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_account_ownership_type = SKIP, bank_country = SKIP,
                   bank_currency = Currencies::USD, description = SKIP,
                   fields = SKIP, type = SKIP, transfer_method_type = SKIP,
                   address = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      unless bank_account_ownership_type == SKIP
        @bank_account_ownership_type =
          bank_account_ownership_type
      end
      @bank_country = bank_country unless bank_country == SKIP
      @bank_currency = bank_currency unless bank_currency == SKIP
      @description = description unless description == SKIP
      @fields = fields unless fields == SKIP
      @type = type unless type == SKIP
      @transfer_method_type = transfer_method_type unless transfer_method_type == SKIP
      @address = address unless address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_account_ownership_type =
        hash.key?('bankAccountOwnershipType') ? hash['bankAccountOwnershipType'] : SKIP
      bank_country = hash.key?('bankCountry') ? hash['bankCountry'] : SKIP
      bank_currency = hash['bankCurrency'] ||= Currencies::USD
      description = hash.key?('description') ? hash['description'] : SKIP
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (BankAccountField.from_hash(structure) if structure)
        end
      end

      fields = SKIP unless hash.key?('fields')
      type = hash.key?('type') ? hash['type'] : SKIP
      transfer_method_type =
        hash.key?('transferMethodType') ? hash['transferMethodType'] : SKIP
      address = BankAccountAddress.from_hash(hash['address']) if hash['address']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateBankAccount.new(bank_account_ownership_type,
                                    bank_country,
                                    bank_currency,
                                    description,
                                    fields,
                                    type,
                                    transfer_method_type,
                                    address,
                                    additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_account_ownership_type: #{@bank_account_ownership_type}, bank_country:"\
      " #{@bank_country}, bank_currency: #{@bank_currency}, description: #{@description}, fields:"\
      " #{@fields}, type: #{@type}, transfer_method_type: #{@transfer_method_type}, address:"\
      " #{@address}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_account_ownership_type: #{@bank_account_ownership_type.inspect},"\
      " bank_country: #{@bank_country.inspect}, bank_currency: #{@bank_currency.inspect},"\
      " description: #{@description.inspect}, fields: #{@fields.inspect}, type: #{@type.inspect},"\
      " transfer_method_type: #{@transfer_method_type.inspect}, address: #{@address.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
