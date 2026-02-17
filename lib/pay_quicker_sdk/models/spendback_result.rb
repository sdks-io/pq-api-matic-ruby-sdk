# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # SpendbackResult Model.
  class SpendbackResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Reference ID in the PayQuicker Hosted Portal, if applicable.
    # @return [String]
    attr_accessor :portal_id

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :amount

    # [Unique value](#/rest/models/structures/client-transfer-id) provided by
    # the client for the spendback
    # @return [String]
    attr_accessor :client_spendback_id

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :destination_token

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [FeeConfiguration]
    attr_accessor :fee

    # Optional internal [memo](#/rest/models/structures/memo) not visible to the
    # user
    # @return [String]
    attr_accessor :memo

    # [Optional comments](#/rest/models/structures/notes) visible to the user
    # @return [String]
    attr_accessor :note

    # Used to identify the [purpose of a
    # payment](#/models/structures/payment-object) and impacts reporting and
    # calculated taxable earnings (if utilizing tax services)
    # @return [PaymentPurposes]
    attr_accessor :purpose

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

    # Current status of a [transfer](#/rest/models/structures/transfer)
    # @return [TransferStatuses]
    attr_accessor :status

    # Auto-generated unique identifier representing a receipt, prefixed with
    # `rcpt-`.
    # @return [String]
    attr_accessor :receipt_token

    # Auto-generated unique identifier representing a receipt, prefixed with
    # `rcpt-`.
    # @return [Array[SpendbackRefundObject]]
    attr_accessor :refunds

    # Auto-generated unique identifier representing a receipt, prefixed with
    # `rcpt-`.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Auto-generated unique identifier representing a receipt, prefixed with
    # `rcpt-`.
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['portal_id'] = 'portalId'
      @_hash['amount'] = 'amount'
      @_hash['client_spendback_id'] = 'clientSpendbackId'
      @_hash['created'] = 'created'
      @_hash['currency'] = 'currency'
      @_hash['destination_token'] = 'destinationToken'
      @_hash['fee'] = 'fee'
      @_hash['memo'] = 'memo'
      @_hash['note'] = 'note'
      @_hash['purpose'] = 'purpose'
      @_hash['source_token'] = 'sourceToken'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['status'] = 'status'
      @_hash['receipt_token'] = 'receiptToken'
      @_hash['refunds'] = 'refunds'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        portal_id
        amount
        client_spendback_id
        created
        currency
        destination_token
        fee
        memo
        note
        purpose
        source_token
        program_user_id
        email
        status
        receipt_token
        refunds
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      token = SKIP, portal_id = SKIP, amount = 1.02, client_spendback_id = SKIP,
      created = SKIP, currency = Currencies::USD,
      destination_token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      fee = SKIP, memo = SKIP, note = SKIP, purpose = SKIP,
      source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      program_user_id = SKIP, email = SKIP, status = SKIP,
      receipt_token = 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c',
      refunds = SKIP, links = SKIP, meta = SKIP, additional_properties = {}
    )
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @portal_id = portal_id unless portal_id == SKIP
      @amount = amount unless amount == SKIP
      @client_spendback_id = client_spendback_id unless client_spendback_id == SKIP
      @created = created unless created == SKIP
      @currency = currency unless currency == SKIP
      @destination_token = destination_token unless destination_token == SKIP
      @fee = fee unless fee == SKIP
      @memo = memo unless memo == SKIP
      @note = note unless note == SKIP
      @purpose = purpose unless purpose == SKIP
      @source_token = source_token unless source_token == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @status = status unless status == SKIP
      @receipt_token = receipt_token unless receipt_token == SKIP
      @refunds = refunds unless refunds == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      portal_id = hash.key?('portalId') ? hash['portalId'] : SKIP
      amount = hash['amount'] ||= 1.02
      client_spendback_id =
        hash.key?('clientSpendbackId') ? hash['clientSpendbackId'] : SKIP
      created = if hash.key?('created')
                  (DateTimeHelper.from_rfc3339(hash['created']) if hash['created'])
                else
                  SKIP
                end
      currency = hash['currency'] ||= Currencies::USD
      destination_token =
        hash['destinationToken'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      fee = FeeConfiguration.from_hash(hash['fee']) if hash['fee']
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      purpose = hash.key?('purpose') ? hash['purpose'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      receipt_token =
        hash['receiptToken'] ||= 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'
      # Parameter is an array, so we need to iterate through it
      refunds = nil
      unless hash['refunds'].nil?
        refunds = []
        hash['refunds'].each do |structure|
          refunds << (SpendbackRefundObject.from_hash(structure) if structure)
        end
      end

      refunds = SKIP unless hash.key?('refunds')
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
      SpendbackResult.new(token,
                          portal_id,
                          amount,
                          client_spendback_id,
                          created,
                          currency,
                          destination_token,
                          fee,
                          memo,
                          note,
                          purpose,
                          source_token,
                          program_user_id,
                          email,
                          status,
                          receipt_token,
                          refunds,
                          links,
                          meta,
                          additional_properties)
    end

    def to_custom_created
      DateTimeHelper.to_rfc3339(created)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, portal_id: #{@portal_id}, amount: #{@amount},"\
      " client_spendback_id: #{@client_spendback_id}, created: #{@created}, currency:"\
      " #{@currency}, destination_token: #{@destination_token}, fee: #{@fee}, memo: #{@memo},"\
      " note: #{@note}, purpose: #{@purpose}, source_token: #{@source_token}, program_user_id:"\
      " #{@program_user_id}, email: #{@email}, status: #{@status}, receipt_token:"\
      " #{@receipt_token}, refunds: #{@refunds}, links: #{@links}, meta: #{@meta},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, portal_id: #{@portal_id.inspect}, amount:"\
      " #{@amount.inspect}, client_spendback_id: #{@client_spendback_id.inspect}, created:"\
      " #{@created.inspect}, currency: #{@currency.inspect}, destination_token:"\
      " #{@destination_token.inspect}, fee: #{@fee.inspect}, memo: #{@memo.inspect}, note:"\
      " #{@note.inspect}, purpose: #{@purpose.inspect}, source_token: #{@source_token.inspect},"\
      " program_user_id: #{@program_user_id.inspect}, email: #{@email.inspect}, status:"\
      " #{@status.inspect}, receipt_token: #{@receipt_token.inspect}, refunds:"\
      " #{@refunds.inspect}, links: #{@links.inspect}, meta: #{@meta.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
