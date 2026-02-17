# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # OAuth 2 scopes supported by the API
  class OAuthScopeServer
    O_AUTH_SCOPE_SERVER = [
      # readonly scope
      READONLY = 'readonly'.freeze,

      # modify scope
      MODIFY = 'modify'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      O_AUTH_SCOPE_SERVER.include?(value)
    end

    def self.from_value(value, default_value = READONLY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'readonly' then READONLY
      when 'modify' then MODIFY
      else
        default_value
      end
    end
  end
end
