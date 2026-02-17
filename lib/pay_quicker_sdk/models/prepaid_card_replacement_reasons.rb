# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Reason for [prepaid card](page:resources/prepaid-cards) replacement.
  class PrepaidCardReplacementReasons
    PREPAID_CARD_REPLACEMENT_REASONS = [
      # TODO: Write general description for COMPROMISED
      COMPROMISED = 'COMPROMISED'.freeze,

      # TODO: Write general description for DAMAGED
      DAMAGED = 'DAMAGED'.freeze,

      # TODO: Write general description for EXPIRED
      EXPIRED = 'EXPIRED'.freeze,

      # TODO: Write general description for LOST
      LOST = 'LOST'.freeze,

      # TODO: Write general description for STOLEN
      STOLEN = 'STOLEN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PREPAID_CARD_REPLACEMENT_REASONS.include?(value)
    end

    def self.from_value(value, default_value = COMPROMISED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'compromised' then COMPROMISED
      when 'damaged' then DAMAGED
      when 'expired' then EXPIRED
      when 'lost' then LOST
      when 'stolen' then STOLEN
      else
        default_value
      end
    end
  end
end
