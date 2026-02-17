# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardDataType.
  class PrepaidCardDataType
    PREPAID_CARD_DATA_TYPE = [
      # TODO: Write general description for TEXT
      TEXT = 'TEXT'.freeze,

      # TODO: Write general description for IMAGE
      IMAGE = 'IMAGE'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PREPAID_CARD_DATA_TYPE.include?(value)
    end

    def self.from_value(value, default_value = TEXT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'text' then TEXT
      when 'image' then IMAGE
      else
        default_value
      end
    end
  end
end
