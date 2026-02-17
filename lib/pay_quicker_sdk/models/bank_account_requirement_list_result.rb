# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # BankAccountRequirementListResult Model.
  class BankAccountRequirementListResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[BankAccountRequirement]]
    attr_accessor :payload

    # TODO: Write general description for this method
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # TODO: Write general description for this method
    # @return [ListMetadata]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payload'] = 'payload'
      @_hash['links'] = 'links'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payload
        links
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payload = SKIP, links = SKIP, meta = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @payload = payload unless payload == SKIP
      @links = links unless links == SKIP
      @meta = meta unless meta == SKIP
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
          payload << (BankAccountRequirement.from_hash(structure) if structure)
        end
      end

      payload = SKIP unless hash.key?('payload')
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')
      meta = ListMetadata.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountRequirementListResult.new(payload,
                                           links,
                                           meta,
                                           additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payload: #{@payload}, links: #{@links}, meta: #{@meta},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payload: #{@payload.inspect}, links: #{@links.inspect}, meta:"\
      " #{@meta.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
