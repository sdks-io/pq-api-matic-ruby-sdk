# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateSpendbackRefundQuote Model.
  class CreateSpendbackRefundQuote < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Money to be refunded from original payment
    # @return [Float]
    attr_accessor :amount

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

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :destination_token

    # Optional internal [memo](#/rest/models/structures/memo) not visible to the
    # user
    # @return [String]
    attr_accessor :memo

    # [Optional comments](#/rest/models/structures/notes) visible to the user
    # @return [String]
    attr_accessor :note

    # [Unique value](#/rest/models/structures/client-transfer-id) provided by
    # the client for the transfer, utilized for reference and deduplication.
    # @return [String]
    attr_accessor :client_spendback_refund_id

    # Determines whether the quote is [automatically
    # accepted](#/rest/models/structures/auto-accept-quote) or if a `POST`
    # utilizing the token for the quote is required.
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_accept_quote

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['source_token'] = 'sourceToken'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['destination_token'] = 'destinationToken'
      @_hash['memo'] = 'memo'
      @_hash['note'] = 'note'
      @_hash['client_spendback_refund_id'] = 'clientSpendbackRefundId'
      @_hash['auto_accept_quote'] = 'autoAcceptQuote'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        source_token
        program_user_id
        email
        destination_token
        memo
        note
        client_spendback_refund_id
        auto_accept_quote
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      amount = SKIP, source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      program_user_id = SKIP, email = SKIP,
      destination_token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      memo = SKIP, note = SKIP, client_spendback_refund_id = SKIP,
      auto_accept_quote = SKIP, additional_properties = {}
    )
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @source_token = source_token unless source_token == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @destination_token = destination_token unless destination_token == SKIP
      @memo = memo unless memo == SKIP
      @note = note unless note == SKIP
      unless client_spendback_refund_id == SKIP
        @client_spendback_refund_id =
          client_spendback_refund_id
      end
      @auto_accept_quote = auto_accept_quote unless auto_accept_quote == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      destination_token =
        hash['destinationToken'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      client_spendback_refund_id =
        hash.key?('clientSpendbackRefundId') ? hash['clientSpendbackRefundId'] : SKIP
      auto_accept_quote =
        hash.key?('autoAcceptQuote') ? hash['autoAcceptQuote'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateSpendbackRefundQuote.new(amount,
                                     source_token,
                                     program_user_id,
                                     email,
                                     destination_token,
                                     memo,
                                     note,
                                     client_spendback_refund_id,
                                     auto_accept_quote,
                                     additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, source_token: #{@source_token}, program_user_id:"\
      " #{@program_user_id}, email: #{@email}, destination_token: #{@destination_token}, memo:"\
      " #{@memo}, note: #{@note}, client_spendback_refund_id: #{@client_spendback_refund_id},"\
      " auto_accept_quote: #{@auto_accept_quote}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, source_token: #{@source_token.inspect},"\
      " program_user_id: #{@program_user_id.inspect}, email: #{@email.inspect}, destination_token:"\
      " #{@destination_token.inspect}, memo: #{@memo.inspect}, note: #{@note.inspect},"\
      " client_spendback_refund_id: #{@client_spendback_refund_id.inspect}, auto_accept_quote:"\
      " #{@auto_accept_quote.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
