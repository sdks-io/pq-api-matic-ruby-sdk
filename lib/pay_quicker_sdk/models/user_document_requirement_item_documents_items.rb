# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # UserDocumentRequirementItemDocumentsItems Model.
  class UserDocumentRequirementItemDocumentsItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Full path of the URI used for this object
    # @return [String]
    attr_accessor :example_image

    # Full path of the URI used for this object
    # @return [Array[UserDocReqItemDocsItemsSupplementalDocsItems]]
    attr_accessor :supplemental_documents

    # Full path of the URI used for this object
    # @return [Array[UserDocReqItemDocsItemsMetadataItems]]
    attr_accessor :metadata

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
      @_hash['supplemental_documents'] = 'supplementalDocuments'
      @_hash['metadata'] = 'metadata'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        example_image
        supplemental_documents
        metadata
        status
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(example_image = SKIP, supplemental_documents = SKIP,
                   metadata = SKIP, status = SKIP, type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @example_image = example_image unless example_image == SKIP
      @supplemental_documents = supplemental_documents unless supplemental_documents == SKIP
      @metadata = metadata unless metadata == SKIP
      @status = status unless status == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      example_image = hash.key?('exampleImage') ? hash['exampleImage'] : SKIP
      # Parameter is an array, so we need to iterate through it
      supplemental_documents = nil
      unless hash['supplementalDocuments'].nil?
        supplemental_documents = []
        hash['supplementalDocuments'].each do |structure|
          supplemental_documents << (UserDocReqItemDocsItemsSupplementalDocsItems.from_hash(structure) if structure)
        end
      end

      supplemental_documents = SKIP unless hash.key?('supplementalDocuments')
      # Parameter is an array, so we need to iterate through it
      metadata = nil
      unless hash['metadata'].nil?
        metadata = []
        hash['metadata'].each do |structure|
          metadata << (UserDocReqItemDocsItemsMetadataItems.from_hash(structure) if structure)
        end
      end

      metadata = SKIP unless hash.key?('metadata')
      status = hash.key?('status') ? hash['status'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UserDocumentRequirementItemDocumentsItems.new(example_image,
                                                    supplemental_documents,
                                                    metadata,
                                                    status,
                                                    type,
                                                    additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} example_image: #{@example_image}, supplemental_documents:"\
      " #{@supplemental_documents}, metadata: #{@metadata}, status: #{@status}, type: #{@type},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} example_image: #{@example_image.inspect}, supplemental_documents:"\
      " #{@supplemental_documents.inspect}, metadata: #{@metadata.inspect}, status:"\
      " #{@status.inspect}, type: #{@type.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
