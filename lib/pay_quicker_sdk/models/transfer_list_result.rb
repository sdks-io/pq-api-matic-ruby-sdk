# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # TransferListResult Model.
  class TransferListResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[TransferObject]]
    attr_accessor :payload

    # TODO: Write general description for this method
    # @return [ListMetadata]
    attr_accessor :meta

    # TODO: Write general description for this method
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payload'] = 'payload'
      @_hash['meta'] = 'meta'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payload = nil, meta = nil, links = nil,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @payload = payload
      @meta = meta
      @links = links
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      payload = nil
      unless hash['payload'].nil?
        payload = []
        hash['payload'].each do |structure|
          payload << (TransferObject.from_hash(structure) if structure)
        end
      end

      payload = nil unless hash.key?('payload')
      meta = ListMetadata.from_hash(hash['meta']) if hash['meta']
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = nil unless hash.key?('links')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      TransferListResult.new(payload,
                             meta,
                             links,
                             additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payload: #{@payload}, meta: #{@meta}, links: #{@links},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payload: #{@payload.inspect}, meta: #{@meta.inspect}, links:"\
      " #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
