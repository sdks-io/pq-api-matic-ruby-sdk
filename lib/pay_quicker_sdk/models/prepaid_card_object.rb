# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # PrepaidCardObject Model.
  class PrepaidCardObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Major [credit card network](#/rest/models/structures/card-network) types
    # @return [CardNetworks]
    attr_accessor :card_network

    # Unique number on the prepaid card
    # @return [String]
    attr_accessor :card_number

    # [Package](#/rest/models/structures/prepaid-card-package) for the card
    # being displayed, including artwork, packaging, and delivery method
    # @return [String]
    attr_accessor :card_package

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :country

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Three- or four-digit [Card Verification Value
    # (CVV)](#/rest/models/structures/cvv) number displayed on the back of a
    # credit or debit card
    # @return [String]
    attr_accessor :cvv

    # Date and time the object will
    # [expire](#/rest/models/structures/expiration)
    # @return [String]
    attr_accessor :expires

    # Current [status](#/rest/models/structures/prepaid-card-status) of the
    # prepaid card
    # @return [PrepaidCardStatuses]
    attr_accessor :status

    # Current [status](#/rest/models/structures/prepaid-card-status) of the
    # prepaid card
    # @return [Array[BankAccountField]]
    attr_accessor :bank_in_details

    # Current [status](#/rest/models/structures/prepaid-card-status) of the
    # prepaid card
    # @return [Array[PrepaidCardCapabilities]]
    attr_accessor :capabilities

    # Auto-generated unique identifier representing a user, prefixed with
    # `user-`.
    # @return [String]
    attr_accessor :user_token

    # Auto-generated unique identifier representing a user, prefixed with
    # `user-`.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['card_network'] = 'cardNetwork'
      @_hash['card_number'] = 'cardNumber'
      @_hash['card_package'] = 'cardPackage'
      @_hash['country'] = 'country'
      @_hash['created_on'] = 'createdOn'
      @_hash['currency'] = 'currency'
      @_hash['cvv'] = 'cvv'
      @_hash['expires'] = 'expires'
      @_hash['status'] = 'status'
      @_hash['bank_in_details'] = 'bankInDetails'
      @_hash['capabilities'] = 'capabilities'
      @_hash['user_token'] = 'userToken'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        card_network
        card_number
        card_package
        country
        created_on
        currency
        cvv
        expires
        status
        bank_in_details
        capabilities
        user_token
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, card_network = SKIP, card_number = SKIP,
                   card_package = SKIP, country = SKIP, created_on = SKIP,
                   currency = Currencies::USD, cvv = SKIP, expires = SKIP,
                   status = SKIP, bank_in_details = SKIP, capabilities = SKIP,
                   user_token = SKIP, links = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @card_network = card_network unless card_network == SKIP
      @card_number = card_number unless card_number == SKIP
      @card_package = card_package unless card_package == SKIP
      @country = country unless country == SKIP
      @created_on = created_on unless created_on == SKIP
      @currency = currency unless currency == SKIP
      @cvv = cvv unless cvv == SKIP
      @expires = expires unless expires == SKIP
      @status = status unless status == SKIP
      @bank_in_details = bank_in_details unless bank_in_details == SKIP
      @capabilities = capabilities unless capabilities == SKIP
      @user_token = user_token unless user_token == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      card_network = hash.key?('cardNetwork') ? hash['cardNetwork'] : SKIP
      card_number = hash.key?('cardNumber') ? hash['cardNumber'] : SKIP
      card_package = hash.key?('cardPackage') ? hash['cardPackage'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      currency = hash['currency'] ||= Currencies::USD
      cvv = hash.key?('cvv') ? hash['cvv'] : SKIP
      expires = hash.key?('expires') ? hash['expires'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      bank_in_details = nil
      unless hash['bankInDetails'].nil?
        bank_in_details = []
        hash['bankInDetails'].each do |structure|
          bank_in_details << (BankAccountField.from_hash(structure) if structure)
        end
      end

      bank_in_details = SKIP unless hash.key?('bankInDetails')
      capabilities = hash.key?('capabilities') ? hash['capabilities'] : SKIP
      user_token = hash.key?('userToken') ? hash['userToken'] : SKIP
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
      PrepaidCardObject.new(token,
                            card_network,
                            card_number,
                            card_package,
                            country,
                            created_on,
                            currency,
                            cvv,
                            expires,
                            status,
                            bank_in_details,
                            capabilities,
                            user_token,
                            links,
                            additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, card_network: #{@card_network}, card_number:"\
      " #{@card_number}, card_package: #{@card_package}, country: #{@country}, created_on:"\
      " #{@created_on}, currency: #{@currency}, cvv: #{@cvv}, expires: #{@expires}, status:"\
      " #{@status}, bank_in_details: #{@bank_in_details}, capabilities: #{@capabilities},"\
      " user_token: #{@user_token}, links: #{@links}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, card_network: #{@card_network.inspect},"\
      " card_number: #{@card_number.inspect}, card_package: #{@card_package.inspect}, country:"\
      " #{@country.inspect}, created_on: #{@created_on.inspect}, currency: #{@currency.inspect},"\
      " cvv: #{@cvv.inspect}, expires: #{@expires.inspect}, status: #{@status.inspect},"\
      " bank_in_details: #{@bank_in_details.inspect}, capabilities: #{@capabilities.inspect},"\
      " user_token: #{@user_token.inspect}, links: #{@links.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
