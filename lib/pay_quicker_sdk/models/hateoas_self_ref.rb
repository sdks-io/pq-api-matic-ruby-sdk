# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Indicates the external link with the full URL of the same page on which the
  # link appears.
  class HateoasSelfRef < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :href

    # Indicates the HATEOS relationship between the target and current
    # resources.
    # @return [HateoasRelationship]
    attr_accessor :params

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['href'] = 'href'
      @_hash['params'] = 'params'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        href
        params
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(href = SKIP, params = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @href = href unless href == SKIP
      @params = params unless params == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      href = hash.key?('href') ? hash['href'] : SKIP
      params = HateoasRelationship.from_hash(hash['params']) if hash['params']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      HateoasSelfRef.new(href,
                         params,
                         additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} href: #{@href}, params: #{@params}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} href: #{@href.inspect}, params: #{@params.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
