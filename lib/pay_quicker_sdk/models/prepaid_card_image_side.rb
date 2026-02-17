# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardImageSide.
  class PrepaidCardImageSide
    PREPAID_CARD_IMAGE_SIDE = [
      # TODO: Write general description for FRONT
      FRONT = 'FRONT'.freeze,

      # TODO: Write general description for BACK
      BACK = 'BACK'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PREPAID_CARD_IMAGE_SIDE.include?(value)
    end

    def self.from_value(value, default_value = FRONT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'front' then FRONT
      when 'back' then BACK
      else
        default_value
      end
    end
  end
end
