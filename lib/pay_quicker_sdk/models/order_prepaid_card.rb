# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # OrderPrepaidCard Model.
  class OrderPrepaidCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Package](#/rest/models/structures/prepaid-card-package) for the card
    # being displayed, including artwork, packaging, and delivery method
    # @return [String]
    attr_accessor :card_package

    # Auto-generated unique identifier representing a program, prefixed with
    # prog-
    # @return [String]
    attr_accessor :program_token

    # Number that is printed on the back of a plastic card.
    # @return [String]
    attr_accessor :card_reference_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_package'] = 'cardPackage'
      @_hash['program_token'] = 'programToken'
      @_hash['card_reference_number'] = 'cardReferenceNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_package
        program_token
        card_reference_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card_package = SKIP, program_token = SKIP,
                   card_reference_number = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @card_package = card_package unless card_package == SKIP
      @program_token = program_token unless program_token == SKIP
      @card_reference_number = card_reference_number unless card_reference_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_package = hash.key?('cardPackage') ? hash['cardPackage'] : SKIP
      program_token = hash.key?('programToken') ? hash['programToken'] : SKIP
      card_reference_number =
        hash.key?('cardReferenceNumber') ? hash['cardReferenceNumber'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      OrderPrepaidCard.new(card_package,
                           program_token,
                           card_reference_number,
                           additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package}, program_token: #{@program_token},"\
      " card_reference_number: #{@card_reference_number}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_package: #{@card_package.inspect}, program_token:"\
      " #{@program_token.inspect}, card_reference_number: #{@card_reference_number.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
