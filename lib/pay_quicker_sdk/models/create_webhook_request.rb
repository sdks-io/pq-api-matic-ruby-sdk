# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # CreateWebhookRequest Model.
  class CreateWebhookRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Namespace used to identify and refer to the object
    # @return [WebhookNamespaces]
    attr_accessor :namespace

    # Full path of the URI used for this object
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['namespace'] = 'namespace'
      @_hash['url'] = 'url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        namespace
        url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(namespace = SKIP, url = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @namespace = namespace unless namespace == SKIP
      @url = url unless url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      namespace = hash.key?('namespace') ? hash['namespace'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateWebhookRequest.new(namespace,
                               url,
                               additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} namespace: #{@namespace}, url: #{@url}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} namespace: #{@namespace.inspect}, url: #{@url.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
