# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # Unique identifier for the [bank
  # account](#/rest/models/enumerations/bank-account-types)
  class BankAccountObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :token

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

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [BankAccountAddress]
    attr_accessor :address

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # User-supplied description of the bank account for reference
    # @return [String]
    attr_accessor :description

    # User-supplied description of the bank account for reference
    # @return [Array[BankAccountField]]
    attr_accessor :fields

    # Current verification status type of the [bank
    # account](#/rest/models/structures/bank-account-status)
    # @return [BankAccountStatuses]
    attr_accessor :status

    # Financial purpose of the [bank
    # account](#/rest/models/structures/bank-account-type)
    # @return [BankAccountTypes]
    attr_accessor :type

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [TransferMethodTypes]
    attr_accessor :transfer_method_type

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['bank_account_ownership_type'] = 'bankAccountOwnershipType'
      @_hash['bank_country'] = 'bankCountry'
      @_hash['bank_currency'] = 'bankCurrency'
      @_hash['address'] = 'address'
      @_hash['created_on'] = 'createdOn'
      @_hash['description'] = 'description'
      @_hash['fields'] = 'fields'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash['transfer_method_type'] = 'transferMethodType'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        bank_account_ownership_type
        bank_country
        bank_currency
        address
        created_on
        description
        fields
        status
        type
        transfer_method_type
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
                   bank_account_ownership_type = SKIP, bank_country = SKIP,
                   bank_currency = Currencies::USD, address = SKIP,
                   created_on = SKIP, description = SKIP, fields = SKIP,
                   status = SKIP, type = SKIP, transfer_method_type = SKIP,
                   links = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      unless bank_account_ownership_type == SKIP
        @bank_account_ownership_type =
          bank_account_ownership_type
      end
      @bank_country = bank_country unless bank_country == SKIP
      @bank_currency = bank_currency unless bank_currency == SKIP
      @address = address unless address == SKIP
      @created_on = created_on unless created_on == SKIP
      @description = description unless description == SKIP
      @fields = fields unless fields == SKIP
      @status = status unless status == SKIP
      @type = type unless type == SKIP
      @transfer_method_type = transfer_method_type unless transfer_method_type == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash['token'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      bank_account_ownership_type =
        hash.key?('bankAccountOwnershipType') ? hash['bankAccountOwnershipType'] : SKIP
      bank_country = hash.key?('bankCountry') ? hash['bankCountry'] : SKIP
      bank_currency = hash['bankCurrency'] ||= Currencies::USD
      address = BankAccountAddress.from_hash(hash['address']) if hash['address']
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
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
      status = hash.key?('status') ? hash['status'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      transfer_method_type =
        hash.key?('transferMethodType') ? hash['transferMethodType'] : SKIP
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
      BankAccountObject.new(token,
                            bank_account_ownership_type,
                            bank_country,
                            bank_currency,
                            address,
                            created_on,
                            description,
                            fields,
                            status,
                            type,
                            transfer_method_type,
                            links,
                            additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, bank_account_ownership_type:"\
      " #{@bank_account_ownership_type}, bank_country: #{@bank_country}, bank_currency:"\
      " #{@bank_currency}, address: #{@address}, created_on: #{@created_on}, description:"\
      " #{@description}, fields: #{@fields}, status: #{@status}, type: #{@type},"\
      " transfer_method_type: #{@transfer_method_type}, links: #{@links}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, bank_account_ownership_type:"\
      " #{@bank_account_ownership_type.inspect}, bank_country: #{@bank_country.inspect},"\
      " bank_currency: #{@bank_currency.inspect}, address: #{@address.inspect}, created_on:"\
      " #{@created_on.inspect}, description: #{@description.inspect}, fields: #{@fields.inspect},"\
      " status: #{@status.inspect}, type: #{@type.inspect}, transfer_method_type:"\
      " #{@transfer_method_type.inspect}, links: #{@links.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
