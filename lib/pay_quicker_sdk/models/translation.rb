# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Localized](#/rest/models/structures/key-value-pair-language-type-string)
  # requirement description for display purposes
  class Translation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The [Language](#/rest/models/structures/language) type in IETF's BCP 47
    # format
    # @return [Languages]
    attr_accessor :language

    # Translated string in the specified language
    # @return [String]
    attr_accessor :translation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['language'] = 'language'
      @_hash['translation'] = 'translation'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        language
        translation
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(language = SKIP, translation = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @language = language unless language == SKIP
      @translation = translation unless translation == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      language = hash.key?('language') ? hash['language'] : SKIP
      translation = hash.key?('translation') ? hash['translation'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Translation.new(language,
                      translation,
                      additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} language: #{@language}, translation: #{@translation},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} language: #{@language.inspect}, translation: #{@translation.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
