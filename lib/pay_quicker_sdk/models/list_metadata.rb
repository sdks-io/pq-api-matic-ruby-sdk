# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ListMetadata Model.
  class ListMetadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :page_no

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :page_size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :page_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :record_count

    # Timezone of the datetime objects in the response
    # @return [String]
    attr_accessor :timezone

    # Timezone of the datetime objects in the response
    # @return [String]
    attr_accessor :request_ref

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page_no'] = 'pageNo'
      @_hash['page_size'] = 'pageSize'
      @_hash['page_count'] = 'pageCount'
      @_hash['record_count'] = 'recordCount'
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

    def initialize(page_no = '1', page_size = '10', page_count = '1',
                   record_count = nil, timezone = nil, request_ref = nil,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @page_no = page_no
      @page_size = page_size
      @page_count = page_count
      @record_count = record_count
      @timezone = timezone
      @request_ref = request_ref
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page_no = hash['pageNo'] ||= '1'
      page_size = hash['pageSize'] ||= '10'
      page_count = hash['pageCount'] ||= '1'
      record_count = hash.key?('recordCount') ? hash['recordCount'] : nil
      timezone = hash.key?('timezone') ? hash['timezone'] : nil
      request_ref = hash.key?('requestRef') ? hash['requestRef'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListMetadata.new(page_no,
                       page_size,
                       page_count,
                       record_count,
                       timezone,
                       request_ref,
                       additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} page_no: #{@page_no}, page_size: #{@page_size}, page_count: #{@page_count},"\
      " record_count: #{@record_count}, timezone: #{@timezone}, request_ref: #{@request_ref},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} page_no: #{@page_no.inspect}, page_size: #{@page_size.inspect}, page_count:"\
      " #{@page_count.inspect}, record_count: #{@record_count.inspect}, timezone:"\
      " #{@timezone.inspect}, request_ref: #{@request_ref.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
