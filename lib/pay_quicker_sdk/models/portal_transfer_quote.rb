# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Response from a invitation request
  class PortalTransferQuote < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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

    # Determines whether the quote is [automatically
    # accepted](#/rest/models/structures/auto-accept-quote) or if a `POST`
    # utilizing the token for the quote is required.
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_accept_quote

    # [Unique value](#/rest/models/structures/client-transfer-id) provided by
    # the client for the transfer, utilized for reference and deduplication.
    # @return [String]
    attr_accessor :client_transfer_id

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :destination_amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :destination_currency

    # Type of
    # [lockside](page:additional-api-information/transfer-lockside-types) for
    # transfers.
    # @return [LockSideTypes]
    attr_accessor :transfer_lock_side

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [TransferMethodTypes]
    attr_accessor :transfer_method_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source_token'] = 'sourceToken'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['note'] = 'note'
      @_hash['memo'] = 'memo'
      @_hash['auto_accept_quote'] = 'autoAcceptQuote'
      @_hash['client_transfer_id'] = 'clientTransferId'
      @_hash['destination_amount'] = 'destinationAmount'
      @_hash['destination_currency'] = 'destinationCurrency'
      @_hash['transfer_lock_side'] = 'transferLockSide'
      @_hash['transfer_method_type'] = 'transferMethodType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        source_token
        program_user_id
        email
        note
        memo
        auto_accept_quote
        client_transfer_id
        destination_amount
        destination_currency
        transfer_lock_side
        transfer_method_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
                   program_user_id = SKIP, email = SKIP, note = SKIP,
                   memo = SKIP, auto_accept_quote = SKIP,
                   client_transfer_id = SKIP, destination_amount = SKIP,
                   destination_currency = Currencies::USD,
                   transfer_lock_side = SKIP, transfer_method_type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @source_token = source_token unless source_token == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @note = note unless note == SKIP
      @memo = memo unless memo == SKIP
      @auto_accept_quote = auto_accept_quote unless auto_accept_quote == SKIP
      @client_transfer_id = client_transfer_id unless client_transfer_id == SKIP
      @destination_amount = destination_amount unless destination_amount == SKIP
      @destination_currency = destination_currency unless destination_currency == SKIP
      @transfer_lock_side = transfer_lock_side unless transfer_lock_side == SKIP
      @transfer_method_type = transfer_method_type unless transfer_method_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      auto_accept_quote =
        hash.key?('autoAcceptQuote') ? hash['autoAcceptQuote'] : SKIP
      client_transfer_id =
        hash.key?('clientTransferId') ? hash['clientTransferId'] : SKIP
      destination_amount =
        hash.key?('destinationAmount') ? hash['destinationAmount'] : SKIP
      destination_currency = hash['destinationCurrency'] ||= Currencies::USD
      transfer_lock_side =
        hash.key?('transferLockSide') ? hash['transferLockSide'] : SKIP
      transfer_method_type =
        hash.key?('transferMethodType') ? hash['transferMethodType'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PortalTransferQuote.new(source_token,
                              program_user_id,
                              email,
                              note,
                              memo,
                              auto_accept_quote,
                              client_transfer_id,
                              destination_amount,
                              destination_currency,
                              transfer_lock_side,
                              transfer_method_type,
                              additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PortalTransferQuote | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} source_token: #{@source_token}, program_user_id: #{@program_user_id},"\
      " email: #{@email}, note: #{@note}, memo: #{@memo}, auto_accept_quote:"\
      " #{@auto_accept_quote}, client_transfer_id: #{@client_transfer_id}, destination_amount:"\
      " #{@destination_amount}, destination_currency: #{@destination_currency},"\
      " transfer_lock_side: #{@transfer_lock_side}, transfer_method_type:"\
      " #{@transfer_method_type}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} source_token: #{@source_token.inspect}, program_user_id:"\
      " #{@program_user_id.inspect}, email: #{@email.inspect}, note: #{@note.inspect}, memo:"\
      " #{@memo.inspect}, auto_accept_quote: #{@auto_accept_quote.inspect}, client_transfer_id:"\
      " #{@client_transfer_id.inspect}, destination_amount: #{@destination_amount.inspect},"\
      " destination_currency: #{@destination_currency.inspect}, transfer_lock_side:"\
      " #{@transfer_lock_side.inspect}, transfer_method_type: #{@transfer_method_type.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
