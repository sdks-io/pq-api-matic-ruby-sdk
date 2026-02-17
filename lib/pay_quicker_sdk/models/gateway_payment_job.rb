# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # TODO1
  class GatewayPaymentJob < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Transfer](#/rest/models/structures/not-before-or-after) is scheduled and
    # will not process before this time.
    # @return [DateTime]
    attr_accessor :not_before

    # [Transfer](#/rest/models/structures/not-before-or-after) expires if not
    # completed prior to this time.
    # @return [DateTime]
    attr_accessor :not_after

    # [Transfer](#/rest/models/structures/not-before-or-after) expires if not
    # completed prior to this time.
    # @return [Array[GatewayPaymentJobQuote]]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['not_before'] = 'notBefore'
      @_hash['not_after'] = 'notAfter'
      @_hash['items'] = 'items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        not_before
        not_after
        items
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(not_before = SKIP, not_after = SKIP, items = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @not_before = not_before unless not_before == SKIP
      @not_after = not_after unless not_after == SKIP
      @items = items unless items == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      not_before = if hash.key?('notBefore')
                     (DateTimeHelper.from_rfc3339(hash['notBefore']) if hash['notBefore'])
                   else
                     SKIP
                   end
      not_after = if hash.key?('notAfter')
                    (DateTimeHelper.from_rfc3339(hash['notAfter']) if hash['notAfter'])
                  else
                    SKIP
                  end
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (GatewayPaymentJobQuote.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      GatewayPaymentJob.new(not_before,
                            not_after,
                            items,
                            additional_properties)
    end

    def to_custom_not_before
      DateTimeHelper.to_rfc3339(not_before)
    end

    def to_custom_not_after
      DateTimeHelper.to_rfc3339(not_after)
    end

    # Validates an instance of the object from a given value.
    # @param [GatewayPaymentJob | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} not_before: #{@not_before}, not_after: #{@not_after}, items: #{@items},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} not_before: #{@not_before.inspect}, not_after: #{@not_after.inspect},"\
      " items: #{@items.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
