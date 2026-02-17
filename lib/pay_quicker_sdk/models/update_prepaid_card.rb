# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # UpdatePrepaidCard Model.
  class UpdatePrepaidCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Package](#/rest/models/structures/prepaid-card-package) for the card
    # being displayed, including artwork, packaging, and delivery method
    # @return [String]
    attr_accessor :card_package

    # Current [status](#/rest/models/structures/prepaid-card-status) of the
    # prepaid card
    # @return [PrepaidCardStatuses]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_package'] = 'cardPackage'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_package
        status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_package = SKIP, status = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_package = card_package unless card_package == SKIP
      @status = status unless status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_package = hash.key?('cardPackage') ? hash['cardPackage'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdatePrepaidCard.new(card_package,
                            status,
                            additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package}, status: #{@status}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package.inspect}, status: #{@status.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
