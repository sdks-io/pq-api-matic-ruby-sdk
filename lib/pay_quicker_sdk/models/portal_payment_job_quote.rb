# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # TODO
  class PortalPaymentJobQuote < BaseModel
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

    # [Program identifier](#/rest/models/structures/program-user-id) for the
    # user
    # @return [String]
    attr_accessor :program_user_id

    # Contact [email address](#/rest/models/structures/email-address) for the
    # user account for the user account
    # @return [String]
    attr_accessor :email

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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['source_token'] = 'sourceToken'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['note'] = 'note'
      @_hash['memo'] = 'memo'
      @_hash['purpose'] = 'purpose'
      @_hash['client_payment_id'] = 'clientPaymentId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        currency
        source_token
        program_user_id
        email
        note
        memo
        purpose
        client_payment_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = 1.02, currency = Currencies::USD,
                   source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
                   program_user_id = SKIP, email = SKIP, note = SKIP,
                   memo = SKIP, purpose = SKIP,
                   client_payment_id = 'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e',
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @source_token = source_token unless source_token == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @note = note unless note == SKIP
      @memo = memo unless memo == SKIP
      @purpose = purpose unless purpose == SKIP
      @client_payment_id = client_payment_id unless client_payment_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount'] ||= 1.02
      currency = hash['currency'] ||= Currencies::USD
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      purpose = hash.key?('purpose') ? hash['purpose'] : SKIP
      client_payment_id =
        hash['clientPaymentId'] ||= 'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e'

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PortalPaymentJobQuote.new(amount,
                                currency,
                                source_token,
                                program_user_id,
                                email,
                                note,
                                memo,
                                purpose,
                                client_payment_id,
                                additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PortalPaymentJobQuote | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, source_token: #{@source_token},"\
      " program_user_id: #{@program_user_id}, email: #{@email}, note: #{@note}, memo: #{@memo},"\
      " purpose: #{@purpose}, client_payment_id: #{@client_payment_id}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect}, source_token:"\
      " #{@source_token.inspect}, program_user_id: #{@program_user_id.inspect}, email:"\
      " #{@email.inspect}, note: #{@note.inspect}, memo: #{@memo.inspect}, purpose:"\
      " #{@purpose.inspect}, client_payment_id: #{@client_payment_id.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
