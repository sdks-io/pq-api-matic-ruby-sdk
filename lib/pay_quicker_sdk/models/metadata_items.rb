# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # MetadataItems Model.
  class MetadataItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Timezone of the datetime objects in the response
    # @return [String]
    attr_accessor :timezone

    # Timezone of the datetime objects in the response
    # @return [String]
    attr_accessor :request_ref

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['timezone'] = 'timezone'
      @_hash['request_ref'] = 'requestRef'
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

    def initialize(timezone = nil, request_ref = nil,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @timezone = timezone
      @request_ref = request_ref
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      timezone = hash.key?('timezone') ? hash['timezone'] : nil
      request_ref = hash.key?('requestRef') ? hash['requestRef'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      MetadataItems.new(timezone,
                        request_ref,
                        additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} timezone: #{@timezone}, request_ref: #{@request_ref},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} timezone: #{@timezone.inspect}, request_ref: #{@request_ref.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
