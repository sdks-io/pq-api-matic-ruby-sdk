# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Capabilities of a [prepaid card](page:resources/prepaid-cards).
  class PrepaidCardCapabilities
    PREPAID_CARD_CAPABILITIES = [
      # The prepaid card supports ApplePay and can be added to an iOS device.
      APPLEPAY = 'APPLEPAY'.freeze,

      # The prepaid card supports banking details that allow for loads (i.e.,
      # direct deposit).
      BANK_IN = 'BANK_IN'.freeze,

      # The prepaid card supports transfers to external bank accounts.
      BANK_OUT = 'BANK_OUT'.freeze,

      # The prepaid card supports Google Pay and can be added to a supported
      # Android device.
      GOOGLEPAY = 'GOOGLEPAY'.freeze,

      # The prepaid card supports revealing the card details or rendered card
      # image via the API.
      REVEAL_CARD = 'REVEAL_CARD'.freeze,

      # TO BE DONE
      REVEAL_PIN = 'REVEAL_PIN'.freeze,

      # The prepaid card supports Samsung Pay and can be added to a supported
      # Samsung device.
      SAMSUNGPAY = 'SAMSUNGPAY'.freeze,

      # The prepaid card supports setting the PIN via the API.
      SET_PIN = 'SET_PIN'.freeze,

      # The prepaid card supports contactless transactions at supported
      # terminals.
      CONTACTLESS = 'CONTACTLESS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PREPAID_CARD_CAPABILITIES.include?(value)
    end

    def self.from_value(value, default_value = APPLEPAY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'applepay' then APPLEPAY
      when 'bank_in' then BANK_IN
      when 'bank_out' then BANK_OUT
      when 'googlepay' then GOOGLEPAY
      when 'reveal_card' then REVEAL_CARD
      when 'reveal_pin' then REVEAL_PIN
      when 'samsungpay' then SAMSUNGPAY
      when 'set_pin' then SET_PIN
      when 'contactless' then CONTACTLESS
      else
        default_value
      end
    end
  end
end
