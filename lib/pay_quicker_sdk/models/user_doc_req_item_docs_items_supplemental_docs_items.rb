# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # UserDocReqItemDocsItemsSupplementalDocsItems Model.
  class UserDocReqItemDocsItemsSupplementalDocsItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Full path of the URI used for this object
    # @return [String]
    attr_accessor :example_image

    # Status Type of a document
    # @return [DocumentStatusTypes]
    attr_accessor :status

    # Indicates the enums for KYC.
    # @return [DocumentTypes]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['example_image'] = 'exampleImage'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        example_image
        status
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(example_image = SKIP, status = SKIP, type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @example_image = example_image unless example_image == SKIP
      @status = status unless status == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      example_image = hash.key?('exampleImage') ? hash['exampleImage'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UserDocReqItemDocsItemsSupplementalDocsItems.new(example_image,
                                                       status,
                                                       type,
                                                       additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} example_image: #{@example_image}, status: #{@status}, type: #{@type},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} example_image: #{@example_image.inspect}, status: #{@status.inspect}, type:"\
      " #{@type.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
