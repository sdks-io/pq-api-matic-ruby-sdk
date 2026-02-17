# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # WebhookSubscriptionResult Model.
  class WebhookSubscriptionResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created

    # Date and time that the object was last updated
    # @return [DateTime]
    attr_accessor :last_updated

    # Full path of the URI used for this object
    # @return [String]
    attr_accessor :url

    # Namespace used to identify and refer to the object
    # @return [WebhookNamespaces]
    attr_accessor :namespace

    # Namespace used to identify and refer to the object
    # @return [WebhookSubscriptionStatuses]
    attr_accessor :status

    # Namespace used to identify and refer to the object
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # Namespace used to identify and refer to the object
    # @return [MetadataItems]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['created'] = 'created'
      @_hash['last_updated'] = 'lastUpdated'
      @_hash['url'] = 'url'
      @_hash['namespace'] = 'namespace'
      @_hash['status'] = 'status'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        created
        last_updated
        url
        namespace
        status
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, created = SKIP, last_updated = SKIP,
                   url = SKIP, namespace = SKIP, status = SKIP, links = SKIP,
                   meta = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @created = created unless created == SKIP
      @last_updated = last_updated unless last_updated == SKIP
      @url = url unless url == SKIP
      @namespace = namespace unless namespace == SKIP
      @status = status unless status == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      created = if hash.key?('created')
                  (DateTimeHelper.from_rfc3339(hash['created']) if hash['created'])
                else
                  SKIP
                end
      last_updated = if hash.key?('lastUpdated')
                       (DateTimeHelper.from_rfc3339(hash['lastUpdated']) if hash['lastUpdated'])
                     else
                       SKIP
                     end
      url = hash.key?('url') ? hash['url'] : SKIP
      namespace = hash.key?('namespace') ? hash['namespace'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
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
      WebhookSubscriptionResult.new(token,
                                    created,
                                    last_updated,
                                    url,
                                    namespace,
                                    status,
                                    links,
                                    meta,
                                    additional_properties)
    end

    def to_custom_created
      DateTimeHelper.to_rfc3339(created)
    end

    def to_custom_last_updated
      DateTimeHelper.to_rfc3339(last_updated)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, created: #{@created}, last_updated: #{@last_updated},"\
      " url: #{@url}, namespace: #{@namespace}, status: #{@status}, links: #{@links}, meta:"\
      " #{@meta}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, created: #{@created.inspect}, last_updated:"\
      " #{@last_updated.inspect}, url: #{@url.inspect}, namespace: #{@namespace.inspect}, status:"\
      " #{@status.inspect}, links: #{@links.inspect}, meta: #{@meta.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
