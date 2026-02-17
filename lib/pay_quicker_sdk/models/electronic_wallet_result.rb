# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # ElectronicWalletResult Model.
  class ElectronicWalletResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :token

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

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [Array[ElectronicWalletField]]
    attr_accessor :fields

    # Current verification status type of the electronic wallet
    # @return [ElectronicWalletStatuses]
    attr_accessor :status

    # Current verification status type of the electronic wallet
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Current verification status type of the electronic wallet
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['type'] = 'type'
      @_hash['electronic_wallet_country'] = 'electronicWalletCountry'
      @_hash['electronic_wallet_currency'] = 'electronicWalletCurrency'
      @_hash['created_on'] = 'createdOn'
      @_hash['fields'] = 'fields'
      @_hash['status'] = 'status'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        type
        electronic_wallet_country
        electronic_wallet_currency
        created_on
        fields
        status
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
                   type = SKIP, electronic_wallet_country = SKIP,
                   electronic_wallet_currency = Currencies::USD,
                   created_on = SKIP, fields = SKIP, status = SKIP,
                   links = SKIP, meta = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @type = type unless type == SKIP
      unless electronic_wallet_country == SKIP
        @electronic_wallet_country =
          electronic_wallet_country
      end
      unless electronic_wallet_currency == SKIP
        @electronic_wallet_currency =
          electronic_wallet_currency
      end
      @created_on = created_on unless created_on == SKIP
      @fields = fields unless fields == SKIP
      @status = status unless status == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash['token'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      type = hash.key?('type') ? hash['type'] : SKIP
      electronic_wallet_country =
        hash.key?('electronicWalletCountry') ? hash['electronicWalletCountry'] : SKIP
      electronic_wallet_currency =
        hash['electronicWalletCurrency'] ||= Currencies::USD
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (ElectronicWalletField.from_hash(structure) if structure)
        end
      end

      fields = SKIP unless hash.key?('fields')
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')
      meta = MetadataItems.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ElectronicWalletResult.new(token,
                                 type,
                                 electronic_wallet_country,
                                 electronic_wallet_currency,
                                 created_on,
                                 fields,
                                 status,
                                 links,
                                 meta,
                                 additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, type: #{@type}, electronic_wallet_country:"\
      " #{@electronic_wallet_country}, electronic_wallet_currency: #{@electronic_wallet_currency},"\
      " created_on: #{@created_on}, fields: #{@fields}, status: #{@status}, links: #{@links},"\
      " meta: #{@meta}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, type: #{@type.inspect},"\
      " electronic_wallet_country: #{@electronic_wallet_country.inspect},"\
      " electronic_wallet_currency: #{@electronic_wallet_currency.inspect}, created_on:"\
      " #{@created_on.inspect}, fields: #{@fields.inspect}, status: #{@status.inspect}, links:"\
      " #{@links.inspect}, meta: #{@meta.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
