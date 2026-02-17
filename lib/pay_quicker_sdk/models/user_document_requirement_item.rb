# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # UserDocumentRequirementItem Model.
  class UserDocumentRequirementItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_of_birth

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_of_nationality

    # TODO: Write general description for this method
    # @return [Array[UserDocumentRequirementItemDocumentsItems]]
    attr_accessor :documents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country_of_birth'] = 'countryOfBirth'
      @_hash['country_of_nationality'] = 'countryOfNationality'
      @_hash['documents'] = 'documents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        country_of_birth
        country_of_nationality
        documents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country_of_birth = SKIP, country_of_nationality = SKIP,
                   documents = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @country_of_birth = country_of_birth unless country_of_birth == SKIP
      @country_of_nationality = country_of_nationality unless country_of_nationality == SKIP
      @documents = documents unless documents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_of_birth =
        hash.key?('countryOfBirth') ? hash['countryOfBirth'] : SKIP
      country_of_nationality =
        hash.key?('countryOfNationality') ? hash['countryOfNationality'] : SKIP
      # Parameter is an array, so we need to iterate through it
      documents = nil
      unless hash['documents'].nil?
        documents = []
        hash['documents'].each do |structure|
          documents << (UserDocumentRequirementItemDocumentsItems.from_hash(structure) if structure)
        end
      end

      documents = SKIP unless hash.key?('documents')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UserDocumentRequirementItem.new(country_of_birth,
                                      country_of_nationality,
                                      documents,
                                      additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} country_of_birth: #{@country_of_birth}, country_of_nationality:"\
      " #{@country_of_nationality}, documents: #{@documents}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} country_of_birth: #{@country_of_birth.inspect}, country_of_nationality:"\
      " #{@country_of_nationality.inspect}, documents: #{@documents.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
