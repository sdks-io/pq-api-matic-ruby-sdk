# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # TODO: Make prepaidCardToken optional
  class StatementObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The string representation of the file content.
    # @return [String]
    attr_accessor :file_contents

    # The name given to a computer file in order to distinguish it from other
    # files
    # @return [String]
    attr_accessor :filename

    # A label used to identify a type of data.  Acts like a file extension on
    # the internet.
    # @return [String]
    attr_accessor :mime_type

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Auto-generated unique identifier representing a user, prefixed with
    # `user-`.
    # @return [String]
    attr_accessor :user_token

    # Auto-generated unique identifier representing a dest, prefixed with dest-.
    # @return [String]
    attr_accessor :prepaid_card_token

    # Beginning date and time of a prepaid card statement
    # @return [DateTime]
    attr_accessor :from

    # Ending date and time of a prepaid card statement
    # @return [DateTime]
    attr_accessor :to

    # Ending date and time of a prepaid card statement
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_contents'] = 'fileContents'
      @_hash['filename'] = 'filename'
      @_hash['mime_type'] = 'mimeType'
      @_hash['token'] = 'token'
      @_hash['user_token'] = 'userToken'
      @_hash['prepaid_card_token'] = 'prepaidCardToken'
      @_hash['from'] = 'from'
      @_hash['to'] = 'to'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        file_contents
        filename
        mime_type
        token
        user_token
        prepaid_card_token
        from
        to
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(file_contents = SKIP, filename = SKIP, mime_type = SKIP,
                   token = SKIP, user_token = SKIP, prepaid_card_token = SKIP,
                   from = SKIP, to = SKIP, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @file_contents = file_contents unless file_contents == SKIP
      @filename = filename unless filename == SKIP
      @mime_type = mime_type unless mime_type == SKIP
      @token = token unless token == SKIP
      @user_token = user_token unless user_token == SKIP
      @prepaid_card_token = prepaid_card_token unless prepaid_card_token == SKIP
      @from = from unless from == SKIP
      @to = to unless to == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_contents = hash.key?('fileContents') ? hash['fileContents'] : SKIP
      filename = hash.key?('filename') ? hash['filename'] : SKIP
      mime_type = hash.key?('mimeType') ? hash['mimeType'] : SKIP
      token = hash.key?('token') ? hash['token'] : SKIP
      user_token = hash.key?('userToken') ? hash['userToken'] : SKIP
      prepaid_card_token =
        hash.key?('prepaidCardToken') ? hash['prepaidCardToken'] : SKIP
      from = if hash.key?('from')
               (DateTimeHelper.from_rfc3339(hash['from']) if hash['from'])
             else
               SKIP
             end
      to = if hash.key?('to')
             (DateTimeHelper.from_rfc3339(hash['to']) if hash['to'])
           else
             SKIP
           end
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      StatementObject.new(file_contents,
                          filename,
                          mime_type,
                          token,
                          user_token,
                          prepaid_card_token,
                          from,
                          to,
                          links,
                          additional_properties)
    end

    def to_custom_from
      DateTimeHelper.to_rfc3339(from)
    end

    def to_custom_to
      DateTimeHelper.to_rfc3339(to)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} file_contents: #{@file_contents}, filename: #{@filename}, mime_type:"\
      " #{@mime_type}, token: #{@token}, user_token: #{@user_token}, prepaid_card_token:"\
      " #{@prepaid_card_token}, from: #{@from}, to: #{@to}, links: #{@links},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} file_contents: #{@file_contents.inspect}, filename: #{@filename.inspect},"\
      " mime_type: #{@mime_type.inspect}, token: #{@token.inspect}, user_token:"\
      " #{@user_token.inspect}, prepaid_card_token: #{@prepaid_card_token.inspect}, from:"\
      " #{@from.inspect}, to: #{@to.inspect}, links: #{@links.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
