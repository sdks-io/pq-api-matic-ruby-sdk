# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # TODO
  class GatewayPaymentQuote < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Unique identifier representing the [source of
    # funds](#/rest/models/structures/source-token)
    # @return [String]
    attr_accessor :source_token

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :destination_token

    # [Optional comments](#/rest/models/structures/notes) visible to the user
    # @return [String]
    attr_accessor :note

    # Optional internal [memo](#/rest/models/structures/memo) not visible to the
    # user
    # @return [String]
    attr_accessor :memo

    # Used to identify the [purpose of a
    # payment](#/models/structures/payment-object) and impacts reporting and
    # calculated taxable earnings (if utilizing tax services)
    # @return [PaymentPurposes]
    attr_accessor :purpose

    # Unique value provided by the client for the
    # [payment](page:resources/payments), utilized for reference and
    # deduplication.
    # @return [String]
    attr_accessor :client_payment_id

    # Determines whether the quote is [automatically
    # accepted](#/rest/models/structures/auto-accept-quote) or if a `POST`
    # utilizing the token for the quote is required.
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_accept_quote

    # [Transfer](#/rest/models/structures/not-before-or-after) is scheduled and
    # will not process before this time.
    # @return [DateTime]
    attr_accessor :not_before

    # [Transfer](#/rest/models/structures/not-before-or-after) expires if not
    # completed prior to this time.
    # @return [DateTime]
    attr_accessor :not_after

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['source_token'] = 'sourceToken'
      @_hash['destination_token'] = 'destinationToken'
      @_hash['note'] = 'note'
      @_hash['memo'] = 'memo'
      @_hash['purpose'] = 'purpose'
      @_hash['client_payment_id'] = 'clientPaymentId'
      @_hash['auto_accept_quote'] = 'autoAcceptQuote'
      @_hash['not_before'] = 'notBefore'
      @_hash['not_after'] = 'notAfter'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        currency
        source_token
        destination_token
        note
        memo
        purpose
        client_payment_id
        auto_accept_quote
        not_before
        not_after
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      amount = 1.02, currency = Currencies::USD,
      source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      destination_token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      note = SKIP, memo = SKIP, purpose = SKIP,
      client_payment_id = 'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e',
      auto_accept_quote = SKIP, not_before = SKIP, not_after = SKIP,
      additional_properties = {}
    )
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @source_token = source_token unless source_token == SKIP
      @destination_token = destination_token unless destination_token == SKIP
      @note = note unless note == SKIP
      @memo = memo unless memo == SKIP
      @purpose = purpose unless purpose == SKIP
      @client_payment_id = client_payment_id unless client_payment_id == SKIP
      @auto_accept_quote = auto_accept_quote unless auto_accept_quote == SKIP
      @not_before = not_before unless not_before == SKIP
      @not_after = not_after unless not_after == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount'] ||= 1.02
      currency = hash['currency'] ||= Currencies::USD
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      destination_token =
        hash['destinationToken'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      note = hash.key?('note') ? hash['note'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      purpose = hash.key?('purpose') ? hash['purpose'] : SKIP
      client_payment_id =
        hash['clientPaymentId'] ||= 'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e'
      auto_accept_quote =
        hash.key?('autoAcceptQuote') ? hash['autoAcceptQuote'] : SKIP
      not_before = if hash.key?('notBefore')
                     (DateTimeHelper.from_rfc3339(hash['notBefore']) if hash['notBefore'])
                   else
                     SKIP
                   end
      not_after = if hash.key?('notAfter')
                    (DateTimeHelper.from_rfc3339(hash['notAfter']) if hash['notAfter'])
                  else
                    SKIP
                  end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      GatewayPaymentQuote.new(amount,
                              currency,
                              source_token,
                              destination_token,
                              note,
                              memo,
                              purpose,
                              client_payment_id,
                              auto_accept_quote,
                              not_before,
                              not_after,
                              additional_properties)
    end

    def to_custom_not_before
      DateTimeHelper.to_rfc3339(not_before)
    end

    def to_custom_not_after
      DateTimeHelper.to_rfc3339(not_after)
    end

    # Validates an instance of the object from a given value.
    # @param [GatewayPaymentQuote | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, source_token: #{@source_token},"\
      " destination_token: #{@destination_token}, note: #{@note}, memo: #{@memo}, purpose:"\
      " #{@purpose}, client_payment_id: #{@client_payment_id}, auto_accept_quote:"\
      " #{@auto_accept_quote}, not_before: #{@not_before}, not_after: #{@not_after},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect}, source_token:"\
      " #{@source_token.inspect}, destination_token: #{@destination_token.inspect}, note:"\
      " #{@note.inspect}, memo: #{@memo.inspect}, purpose: #{@purpose.inspect}, client_payment_id:"\
      " #{@client_payment_id.inspect}, auto_accept_quote: #{@auto_accept_quote.inspect},"\
      " not_before: #{@not_before.inspect}, not_after: #{@not_after.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
