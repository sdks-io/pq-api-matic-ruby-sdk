# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Purpose of the token
  class TokenPurposes
    TOKEN_PURPOSES = [
      # TODO: Write general description for CARD_OPERATION
      CARD_OPERATION = 'CARD_OPERATION'.freeze,

      # TODO: Write general description for PIN_OPERATION
      PIN_OPERATION = 'PIN_OPERATION'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TOKEN_PURPOSES.include?(value)
    end

    def self.from_value(value, default_value = CARD_OPERATION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'card_operation' then CARD_OPERATION
      when 'pin_operation' then PIN_OPERATION
      else
        default_value
      end
    end
  end
end
