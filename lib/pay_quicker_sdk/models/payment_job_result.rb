# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # PaymentJobResult Model.
  class PaymentJobResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Reference ID in the PayQuicker Hosted Portal, if applicable.
    # @return [String]
    attr_accessor :portal_id

    # The name given to a computer file in order to distinguish it from other
    # files
    # @return [String]
    attr_accessor :filename

    # [Token](#/rest/models/structures/token) representing the document
    # @return [String]
    attr_accessor :file_token

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created

    # [Transfer](#/rest/models/structures/not-before-or-after) is scheduled and
    # will not process before this time.
    # @return [DateTime]
    attr_accessor :not_before

    # [Transfer](#/rest/models/structures/not-before-or-after) is scheduled and
    # will not process before this time.
    # @return [Integer]
    attr_accessor :count

    # Job Types
    # @return [JobTypes]
    attr_accessor :type

    # Job Status Types
    # @return [JobStatusTypes]
    attr_accessor :status

    # Job Status Types
    # @return [Array[PaymentObject]]
    attr_accessor :items

    # Job Status Types
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Job Status Types
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['portal_id'] = 'portalId'
      @_hash['filename'] = 'filename'
      @_hash['file_token'] = 'fileToken'
      @_hash['created'] = 'created'
      @_hash['not_before'] = 'notBefore'
      @_hash['count'] = 'count'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['items'] = 'items'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        portal_id
        filename
        file_token
        created
        not_before
        count
        type
        status
        items
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, portal_id = SKIP, filename = SKIP,
                   file_token = 'docu-2053aaad-c1a5-45e2-a2da-f71287f32800',
                   created = SKIP, not_before = SKIP, count = SKIP, type = SKIP,
                   status = SKIP, items = SKIP, links = SKIP, meta = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @portal_id = portal_id unless portal_id == SKIP
      @filename = filename unless filename == SKIP
      @file_token = file_token unless file_token == SKIP
      @created = created unless created == SKIP
      @not_before = not_before unless not_before == SKIP
      @count = count unless count == SKIP
      @type = type unless type == SKIP
      @status = status unless status == SKIP
      @items = items unless items == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      portal_id = hash.key?('portalId') ? hash['portalId'] : SKIP
      filename = hash.key?('filename') ? hash['filename'] : SKIP
      file_token =
        hash['fileToken'] ||= 'docu-2053aaad-c1a5-45e2-a2da-f71287f32800'
      created = if hash.key?('created')
                  (DateTimeHelper.from_rfc3339(hash['created']) if hash['created'])
                else
                  SKIP
                end
      not_before = if hash.key?('notBefore')
                     (DateTimeHelper.from_rfc3339(hash['notBefore']) if hash['notBefore'])
                   else
                     SKIP
                   end
      count = hash.key?('count') ? hash['count'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (PaymentObject.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
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
      PaymentJobResult.new(token,
                           portal_id,
                           filename,
                           file_token,
                           created,
                           not_before,
                           count,
                           type,
                           status,
                           items,
                           links,
                           meta,
                           additional_properties)
    end

    def to_custom_created
      DateTimeHelper.to_rfc3339(created)
    end

    def to_custom_not_before
      DateTimeHelper.to_rfc3339(not_before)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, portal_id: #{@portal_id}, filename: #{@filename},"\
      " file_token: #{@file_token}, created: #{@created}, not_before: #{@not_before}, count:"\
      " #{@count}, type: #{@type}, status: #{@status}, items: #{@items}, links: #{@links}, meta:"\
      " #{@meta}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, portal_id: #{@portal_id.inspect}, filename:"\
      " #{@filename.inspect}, file_token: #{@file_token.inspect}, created: #{@created.inspect},"\
      " not_before: #{@not_before.inspect}, count: #{@count.inspect}, type: #{@type.inspect},"\
      " status: #{@status.inspect}, items: #{@items.inspect}, links: #{@links.inspect}, meta:"\
      " #{@meta.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
