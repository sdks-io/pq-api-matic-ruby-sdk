# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Transfer expected delivery types
  class ExpectedDeliveryTypes
    EXPECTED_DELIVERY_TYPES = [
      # TODO: Write general description for SAME_DAY
      SAME_DAY = 'SAME_DAY'.freeze,

      # TODO: Write general description for NEXT_BANKING_DAY
      NEXT_BANKING_DAY = 'NEXT_BANKING_DAY'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EXPECTED_DELIVERY_TYPES.include?(value)
    end

    def self.from_value(value, default_value = SAME_DAY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'same_day' then SAME_DAY
      when 'next_banking_day' then NEXT_BANKING_DAY
      else
        default_value
      end
    end
  end
end
