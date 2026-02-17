# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # The delivery details of a Bank transfer with the minimum and maximum
  # delivery in minutes or the expected delivery time.
  class DeliveryDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :minimum_delivery_minutes

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :maximum_delivery_minutes

    # Transfer expected delivery types
    # @return [ExpectedDeliveryTypes]
    attr_accessor :expected_delivery

    # The time of the expected delivery. Does not include the date.
    # @return [DateTime]
    attr_accessor :expected_delivery_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['minimum_delivery_minutes'] = 'minimumDeliveryMinutes'
      @_hash['maximum_delivery_minutes'] = 'maximumDeliveryMinutes'
      @_hash['expected_delivery'] = 'expectedDelivery'
      @_hash['expected_delivery_time'] = 'expectedDeliveryTime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        minimum_delivery_minutes
        maximum_delivery_minutes
        expected_delivery
        expected_delivery_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(minimum_delivery_minutes = SKIP,
                   maximum_delivery_minutes = SKIP, expected_delivery = SKIP,
                   expected_delivery_time = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @minimum_delivery_minutes = minimum_delivery_minutes unless minimum_delivery_minutes == SKIP
      @maximum_delivery_minutes = maximum_delivery_minutes unless maximum_delivery_minutes == SKIP
      @expected_delivery = expected_delivery unless expected_delivery == SKIP
      @expected_delivery_time = expected_delivery_time unless expected_delivery_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      minimum_delivery_minutes =
        hash.key?('minimumDeliveryMinutes') ? hash['minimumDeliveryMinutes'] : SKIP
      maximum_delivery_minutes =
        hash.key?('maximumDeliveryMinutes') ? hash['maximumDeliveryMinutes'] : SKIP
      expected_delivery =
        hash.key?('expectedDelivery') ? hash['expectedDelivery'] : SKIP
      expected_delivery_time = if hash.key?('expectedDeliveryTime')
                                 (DateTimeHelper.from_rfc3339(hash['expectedDeliveryTime']) if hash['expectedDeliveryTime'])
                               else
                                 SKIP
                               end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      DeliveryDetails.new(minimum_delivery_minutes,
                          maximum_delivery_minutes,
                          expected_delivery,
                          expected_delivery_time,
                          additional_properties)
    end

    def to_custom_expected_delivery_time
      DateTimeHelper.to_rfc3339(expected_delivery_time)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} minimum_delivery_minutes: #{@minimum_delivery_minutes},"\
      " maximum_delivery_minutes: #{@maximum_delivery_minutes}, expected_delivery:"\
      " #{@expected_delivery}, expected_delivery_time: #{@expected_delivery_time},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} minimum_delivery_minutes: #{@minimum_delivery_minutes.inspect},"\
      " maximum_delivery_minutes: #{@maximum_delivery_minutes.inspect}, expected_delivery:"\
      " #{@expected_delivery.inspect}, expected_delivery_time: #{@expected_delivery_time.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
