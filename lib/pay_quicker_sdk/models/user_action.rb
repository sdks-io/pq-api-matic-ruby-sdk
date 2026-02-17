# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # _UserAction.
  class UserAction
    USER_ACTION = [
      # TODO: Write general description for NO_ACTION
      NO_ACTION = 'NO_ACTION'.freeze,

      # TODO: Write general description for UPLOAD_DOCUMENTS
      UPLOAD_DOCUMENTS = 'UPLOAD_DOCUMENTS'.freeze,

      # TODO: Write general description for REVISE_DOCUMENTS
      REVISE_DOCUMENTS = 'REVISE_DOCUMENTS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      USER_ACTION.include?(value)
    end

    def self.from_value(value, default_value = NO_ACTION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'no_action' then NO_ACTION
      when 'upload_documents' then UPLOAD_DOCUMENTS
      when 'revise_documents' then REVISE_DOCUMENTS
      else
        default_value
      end
    end
  end
end
