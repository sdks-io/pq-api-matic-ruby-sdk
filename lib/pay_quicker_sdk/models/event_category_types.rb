# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The type of Registration tied to a particular event
  class EventCategoryTypes
    EVENT_CATEGORY_TYPES = [
      # TODO: Write general description for WALLET_REGISTRATION
      WALLET_REGISTRATION = 'WALLET_REGISTRATION'.freeze,

      # TODO: Write general description for PREPAID_CARD_REGISTRATION
      PREPAID_CARD_REGISTRATION = 'PREPAID_CARD_REGISTRATION'.freeze,

      # TODO: Write general description for UPDATE_REGISTRATION
      UPDATE_REGISTRATION = 'UPDATE_REGISTRATION'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_CATEGORY_TYPES.include?(value)
    end

    def self.from_value(value, default_value = WALLET_REGISTRATION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'wallet_registration' then WALLET_REGISTRATION
      when 'prepaid_card_registration' then PREPAID_CARD_REGISTRATION
      when 'update_registration' then UPDATE_REGISTRATION
      else
        default_value
      end
    end
  end
end
