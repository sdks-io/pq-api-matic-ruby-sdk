# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ProgramResult Model.
  class ProgramResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Auto-generated unique identifier representing a program, prefixed with
    # prog-
    # @return [String]
    attr_accessor :token

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Name of the bank
    # @return [BankTypes]
    attr_accessor :bank

    # Name of the bank
    # @return [Array[ElectronicWalletType]]
    attr_accessor :electronic_wallets

    # Indicates the type of program associated with a prepaid card
    # @return [ProgramTypes]
    attr_accessor :type

    # Indicates the type of program associated with a prepaid card
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Indicates the type of program associated with a prepaid card
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['currency'] = 'currency'
      @_hash['bank'] = 'bank'
      @_hash['electronic_wallets'] = 'electronicWallets'
      @_hash['type'] = 'type'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        electronic_wallets
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = nil, currency = Currencies::USD, bank = nil,
                   type = nil, electronic_wallets = SKIP, links = SKIP,
                   meta = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token
      @currency = currency
      @bank = bank
      @electronic_wallets = electronic_wallets unless electronic_wallets == SKIP
      @type = type
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : nil
      currency = hash['currency'] ||= Currencies::USD
      bank = hash.key?('bank') ? hash['bank'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      # Parameter is an array, so we need to iterate through it
      electronic_wallets = nil
      unless hash['electronicWallets'].nil?
        electronic_wallets = []
        hash['electronicWallets'].each do |structure|
          electronic_wallets << (ElectronicWalletType.from_hash(structure) if structure)
        end
      end

      electronic_wallets = SKIP unless hash.key?('electronicWallets')
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
      ProgramResult.new(token,
                        currency,
                        bank,
                        type,
                        electronic_wallets,
                        links,
                        meta,
                        additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, currency: #{@currency}, bank: #{@bank},"\
      " electronic_wallets: #{@electronic_wallets}, type: #{@type}, links: #{@links}, meta:"\
      " #{@meta}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, currency: #{@currency.inspect}, bank:"\
      " #{@bank.inspect}, electronic_wallets: #{@electronic_wallets.inspect}, type:"\
      " #{@type.inspect}, links: #{@links.inspect}, meta: #{@meta.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
