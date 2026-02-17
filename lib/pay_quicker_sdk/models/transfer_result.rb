# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # TransferResult Model.
  class TransferResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Reference ID in the PayQuicker Hosted Portal, if applicable.
    # @return [String]
    attr_accessor :portal_id

    # [Unique value](#/rest/models/structures/client-transfer-id) provided by
    # the client for the transfer, utilized for reference and deduplication.
    # @return [String]
    attr_accessor :client_transfer_id

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created

    # The delivery details of a Bank transfer with the minimum and maximum
    # delivery in minutes or the expected delivery time.
    # @return [DeliveryDetails]
    attr_accessor :delivery_details

    # Allocated money to be sent in the transaction.
    # @return [Float]
    attr_accessor :destination_amount

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :destination_currency

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :destination_token

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [FeeDistribution]
    attr_accessor :fee

    # Exchange rate
    # @return [FxRate]
    attr_accessor :fx_rate

    # Optional internal [memo](#/rest/models/structures/memo) not visible to the
    # user
    # @return [String]
    attr_accessor :memo

    # [Optional comments](#/rest/models/structures/notes) visible to the user
    # @return [String]
    attr_accessor :note

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

    # Type of
    # [lockside](page:additional-api-information/transfer-lockside-types) for
    # transfers.
    # @return [LockSideTypes]
    attr_accessor :transfer_lock_side

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [TransferMethodTypes]
    attr_accessor :transfer_method_type

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Optional transfer methods applicable only to bank and e-wallet transfers.
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['portal_id'] = 'portalId'
      @_hash['client_transfer_id'] = 'clientTransferId'
      @_hash['created'] = 'created'
      @_hash['delivery_details'] = 'deliveryDetails'
      @_hash['destination_amount'] = 'destinationAmount'
      @_hash['destination_currency'] = 'destinationCurrency'
      @_hash['destination_token'] = 'destinationToken'
      @_hash['fee'] = 'fee'
      @_hash['fx_rate'] = 'fxRate'
      @_hash['memo'] = 'memo'
      @_hash['note'] = 'note'
      @_hash['source_token'] = 'sourceToken'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['status'] = 'status'
      @_hash['receipt_token'] = 'receiptToken'
      @_hash['transfer_lock_side'] = 'transferLockSide'
      @_hash['transfer_method_type'] = 'transferMethodType'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        portal_id
        client_transfer_id
        created
        delivery_details
        destination_amount
        destination_currency
        destination_token
        fee
        fx_rate
        memo
        note
        source_token
        program_user_id
        email
        status
        receipt_token
        transfer_lock_side
        transfer_method_type
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      token = SKIP, portal_id = SKIP, client_transfer_id = SKIP, created = SKIP,
      delivery_details = SKIP, destination_amount = SKIP,
      destination_currency = Currencies::USD,
      destination_token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      fee = SKIP, fx_rate = SKIP, memo = SKIP, note = SKIP,
      source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      program_user_id = SKIP, email = SKIP, status = SKIP,
      receipt_token = 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c',
      transfer_lock_side = SKIP, transfer_method_type = SKIP, links = SKIP,
      meta = SKIP, additional_properties = {}
    )
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @portal_id = portal_id unless portal_id == SKIP
      @client_transfer_id = client_transfer_id unless client_transfer_id == SKIP
      @created = created unless created == SKIP
      @delivery_details = delivery_details unless delivery_details == SKIP
      @destination_amount = destination_amount unless destination_amount == SKIP
      @destination_currency = destination_currency unless destination_currency == SKIP
      @destination_token = destination_token unless destination_token == SKIP
      @fee = fee unless fee == SKIP
      @fx_rate = fx_rate unless fx_rate == SKIP
      @memo = memo unless memo == SKIP
      @note = note unless note == SKIP
      @source_token = source_token unless source_token == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @status = status unless status == SKIP
      @receipt_token = receipt_token unless receipt_token == SKIP
      @transfer_lock_side = transfer_lock_side unless transfer_lock_side == SKIP
      @transfer_method_type = transfer_method_type unless transfer_method_type == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      portal_id = hash.key?('portalId') ? hash['portalId'] : SKIP
      client_transfer_id =
        hash.key?('clientTransferId') ? hash['clientTransferId'] : SKIP
      created = if hash.key?('created')
                  (DateTimeHelper.from_rfc3339(hash['created']) if hash['created'])
                else
                  SKIP
                end
      delivery_details = DeliveryDetails.from_hash(hash['deliveryDetails']) if
        hash['deliveryDetails']
      destination_amount =
        hash.key?('destinationAmount') ? hash['destinationAmount'] : SKIP
      destination_currency = hash['destinationCurrency'] ||= Currencies::USD
      destination_token =
        hash['destinationToken'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      fee = FeeDistribution.from_hash(hash['fee']) if hash['fee']
      fx_rate = FxRate.from_hash(hash['fxRate']) if hash['fxRate']
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      receipt_token =
        hash['receiptToken'] ||= 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'
      transfer_lock_side =
        hash.key?('transferLockSide') ? hash['transferLockSide'] : SKIP
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
      meta = MetadataItems.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      TransferResult.new(token,
                         portal_id,
                         client_transfer_id,
                         created,
                         delivery_details,
                         destination_amount,
                         destination_currency,
                         destination_token,
                         fee,
                         fx_rate,
                         memo,
                         note,
                         source_token,
                         program_user_id,
                         email,
                         status,
                         receipt_token,
                         transfer_lock_side,
                         transfer_method_type,
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
      "<#{class_name} token: #{@token}, portal_id: #{@portal_id}, client_transfer_id:"\
      " #{@client_transfer_id}, created: #{@created}, delivery_details: #{@delivery_details},"\
      " destination_amount: #{@destination_amount}, destination_currency:"\
      " #{@destination_currency}, destination_token: #{@destination_token}, fee: #{@fee}, fx_rate:"\
      " #{@fx_rate}, memo: #{@memo}, note: #{@note}, source_token: #{@source_token},"\
      " program_user_id: #{@program_user_id}, email: #{@email}, status: #{@status}, receipt_token:"\
      " #{@receipt_token}, transfer_lock_side: #{@transfer_lock_side}, transfer_method_type:"\
      " #{@transfer_method_type}, links: #{@links}, meta: #{@meta}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, portal_id: #{@portal_id.inspect},"\
      " client_transfer_id: #{@client_transfer_id.inspect}, created: #{@created.inspect},"\
      " delivery_details: #{@delivery_details.inspect}, destination_amount:"\
      " #{@destination_amount.inspect}, destination_currency: #{@destination_currency.inspect},"\
      " destination_token: #{@destination_token.inspect}, fee: #{@fee.inspect}, fx_rate:"\
      " #{@fx_rate.inspect}, memo: #{@memo.inspect}, note: #{@note.inspect}, source_token:"\
      " #{@source_token.inspect}, program_user_id: #{@program_user_id.inspect}, email:"\
      " #{@email.inspect}, status: #{@status.inspect}, receipt_token: #{@receipt_token.inspect},"\
      " transfer_lock_side: #{@transfer_lock_side.inspect}, transfer_method_type:"\
      " #{@transfer_method_type.inspect}, links: #{@links.inspect}, meta: #{@meta.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
