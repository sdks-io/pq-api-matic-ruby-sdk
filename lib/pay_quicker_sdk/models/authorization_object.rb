# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # AuthorizationObject Model.
  class AuthorizationObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Financial types for the [prepaid card](page:resources/prepaid-cards)
    # authorization.
    # @return [PrepaidCardAuthorizations]
    attr_accessor :type

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # Receipt sign types
    # @return [Signs]
    attr_accessor :sign

    # Unique identifier representing the [source of
    # funds](#/rest/models/structures/source-token)
    # @return [String]
    attr_accessor :source_token

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Receipt status types
    # @return [ReceiptStatuses]
    attr_accessor :status

    # Receipt status types
    # @return [Array[Translation]]
    attr_accessor :descriptions

    # Date that the auth was created
    # @return [DateTime]
    attr_accessor :auth_date

    # [Provider
    # reference](#/rest/models/structures/identity-verification-provider-referen
    # ce) used for performing identity checks for the provider
    # @return [String]
    attr_accessor :reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['created_on'] = 'createdOn'
      @_hash['sign'] = 'sign'
      @_hash['source_token'] = 'sourceToken'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['status'] = 'status'
      @_hash['descriptions'] = 'descriptions'
      @_hash['auth_date'] = 'authDate'
      @_hash['reference'] = 'reference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        created_on
        sign
        source_token
        amount
        currency
        status
        descriptions
        auth_date
        reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = SKIP, created_on = SKIP, sign = SKIP,
                   source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
                   amount = 1.02, currency = Currencies::USD, status = SKIP,
                   descriptions = SKIP, auth_date = SKIP, reference = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @type = type unless type == SKIP
      @created_on = created_on unless created_on == SKIP
      @sign = sign unless sign == SKIP
      @source_token = source_token unless source_token == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @status = status unless status == SKIP
      @descriptions = descriptions unless descriptions == SKIP
      @auth_date = auth_date unless auth_date == SKIP
      @reference = reference unless reference == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      sign = hash.key?('sign') ? hash['sign'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      amount = hash['amount'] ||= 1.02
      currency = hash['currency'] ||= Currencies::USD
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      descriptions = nil
      unless hash['descriptions'].nil?
        descriptions = []
        hash['descriptions'].each do |structure|
          descriptions << (Translation.from_hash(structure) if structure)
        end
      end

      descriptions = SKIP unless hash.key?('descriptions')
      auth_date = if hash.key?('authDate')
                    (DateTimeHelper.from_rfc3339(hash['authDate']) if hash['authDate'])
                  else
                    SKIP
                  end
      reference = hash.key?('reference') ? hash['reference'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AuthorizationObject.new(type,
                              created_on,
                              sign,
                              source_token,
                              amount,
                              currency,
                              status,
                              descriptions,
                              auth_date,
                              reference,
                              additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_auth_date
      DateTimeHelper.to_rfc3339(auth_date)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, created_on: #{@created_on}, sign: #{@sign}, source_token:"\
      " #{@source_token}, amount: #{@amount}, currency: #{@currency}, status: #{@status},"\
      " descriptions: #{@descriptions}, auth_date: #{@auth_date}, reference: #{@reference},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, created_on: #{@created_on.inspect}, sign:"\
      " #{@sign.inspect}, source_token: #{@source_token.inspect}, amount: #{@amount.inspect},"\
      " currency: #{@currency.inspect}, status: #{@status.inspect}, descriptions:"\
      " #{@descriptions.inspect}, auth_date: #{@auth_date.inspect}, reference:"\
      " #{@reference.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
