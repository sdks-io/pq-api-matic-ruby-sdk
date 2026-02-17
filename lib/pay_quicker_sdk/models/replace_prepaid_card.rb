# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ReplacePrepaidCard Model.
  class ReplacePrepaidCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Package](#/rest/models/structures/prepaid-card-package) for the card
    # being displayed, including artwork, packaging, and delivery method
    # @return [String]
    attr_accessor :card_package

    # Reason for [prepaid card](page:resources/prepaid-cards) replacement.
    # @return [PrepaidCardReplacementReasons]
    attr_accessor :card_replacement_reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_package'] = 'cardPackage'
      @_hash['card_replacement_reason'] = 'cardReplacementReason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_package
        card_replacement_reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_package = SKIP, card_replacement_reason = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_package = card_package unless card_package == SKIP
      @card_replacement_reason = card_replacement_reason unless card_replacement_reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_package = hash.key?('cardPackage') ? hash['cardPackage'] : SKIP
      card_replacement_reason =
        hash.key?('cardReplacementReason') ? hash['cardReplacementReason'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReplacePrepaidCard.new(card_package,
                             card_replacement_reason,
                             additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package}, card_replacement_reason:"\
      " #{@card_replacement_reason}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package.inspect}, card_replacement_reason:"\
      " #{@card_replacement_reason.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
