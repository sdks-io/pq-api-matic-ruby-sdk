# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # ReceiptResult Model.
  class ReceiptResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Auto-generated unique identifier representing a receipt, prefixed with
    # `rcpt-`.
    # @return [String]
    attr_accessor :token

    # [Transfer type](#/rest/models/structures/transfer-type)
    # @return [TransferTypes]
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

    # Unique identifier representing the [destination of
    # funds](#/rest/models/structures/destination-token)
    # @return [String]
    attr_accessor :destination_token

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
    # @return [Array[ReceiptDescriptions]]
    attr_accessor :descriptions

    # The delivery details of a Bank transfer with the minimum and maximum
    # delivery in minutes or the expected delivery time.
    # @return [DeliveryDetails]
    attr_accessor :delivery_details

    # The delivery details of a Bank transfer with the minimum and maximum
    # delivery in minutes or the expected delivery time.
    # @return [ReceiptDetails]
    attr_accessor :details

    # Exchange rate
    # @return [FxRate]
    attr_accessor :fx_rate

    # Exchange rate
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Exchange rate
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['type'] = 'type'
      @_hash['created_on'] = 'createdOn'
      @_hash['sign'] = 'sign'
      @_hash['source_token'] = 'sourceToken'
      @_hash['destination_token'] = 'destinationToken'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['status'] = 'status'
      @_hash['descriptions'] = 'descriptions'
      @_hash['delivery_details'] = 'deliveryDetails'
      @_hash['details'] = 'details'
      @_hash['fx_rate'] = 'fxRate'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        type
        created_on
        sign
        source_token
        destination_token
        amount
        currency
        status
        descriptions
        delivery_details
        details
        fx_rate
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      token = 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c', type = SKIP,
      created_on = SKIP, sign = SKIP,
      source_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      destination_token = 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      amount = 1.02, currency = Currencies::USD, status = SKIP,
      descriptions = SKIP, delivery_details = SKIP, details = SKIP,
      fx_rate = SKIP, links = SKIP, meta = SKIP, additional_properties = {}
    )
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @type = type unless type == SKIP
      @created_on = created_on unless created_on == SKIP
      @sign = sign unless sign == SKIP
      @source_token = source_token unless source_token == SKIP
      @destination_token = destination_token unless destination_token == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @status = status unless status == SKIP
      @descriptions = descriptions unless descriptions == SKIP
      @delivery_details = delivery_details unless delivery_details == SKIP
      @details = details unless details == SKIP
      @fx_rate = fx_rate unless fx_rate == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash['token'] ||= 'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'
      type = hash.key?('type') ? hash['type'] : SKIP
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      sign = hash.key?('sign') ? hash['sign'] : SKIP
      source_token =
        hash['sourceToken'] ||= 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
      destination_token =
        hash['destinationToken'] ||= 'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'
      amount = hash['amount'] ||= 1.02
      currency = hash['currency'] ||= Currencies::USD
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      descriptions = nil
      unless hash['descriptions'].nil?
        descriptions = []
        hash['descriptions'].each do |structure|
          descriptions << (ReceiptDescriptions.from_hash(structure) if structure)
        end
      end

      descriptions = SKIP unless hash.key?('descriptions')
      delivery_details = DeliveryDetails.from_hash(hash['deliveryDetails']) if
        hash['deliveryDetails']
      details = ReceiptDetails.from_hash(hash['details']) if hash['details']
      fx_rate = FxRate.from_hash(hash['fxRate']) if hash['fxRate']
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
      ReceiptResult.new(token,
                        type,
                        created_on,
                        sign,
                        source_token,
                        destination_token,
                        amount,
                        currency,
                        status,
                        descriptions,
                        delivery_details,
                        details,
                        fx_rate,
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
      "<#{class_name} token: #{@token}, type: #{@type}, created_on: #{@created_on}, sign:"\
      " #{@sign}, source_token: #{@source_token}, destination_token: #{@destination_token},"\
      " amount: #{@amount}, currency: #{@currency}, status: #{@status}, descriptions:"\
      " #{@descriptions}, delivery_details: #{@delivery_details}, details: #{@details}, fx_rate:"\
      " #{@fx_rate}, links: #{@links}, meta: #{@meta}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, type: #{@type.inspect}, created_on:"\
      " #{@created_on.inspect}, sign: #{@sign.inspect}, source_token: #{@source_token.inspect},"\
      " destination_token: #{@destination_token.inspect}, amount: #{@amount.inspect}, currency:"\
      " #{@currency.inspect}, status: #{@status.inspect}, descriptions: #{@descriptions.inspect},"\
      " delivery_details: #{@delivery_details.inspect}, details: #{@details.inspect}, fx_rate:"\
      " #{@fx_rate.inspect}, links: #{@links.inspect}, meta: #{@meta.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
