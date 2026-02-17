# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Fee value types
  class FeeValues
    FEE_VALUES = [
      # TODO: Write general description for PERCENTAGE
      PERCENTAGE = 'PERCENTAGE'.freeze,

      # TODO: Write general description for STATIC
      STATIC = 'STATIC'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEE_VALUES.include?(value)
    end

    def self.from_value(value, default_value = PERCENTAGE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'percentage' then PERCENTAGE
      when 'static' then STATIC
      else
        default_value
      end
    end
  end
end
