# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Fee responsibility source types
  class FeeResponsibilitySources
    FEE_RESPONSIBILITY_SOURCES = [
      # TODO: Write general description for CREDIT
      CREDIT = 'CREDIT'.freeze,

      # TODO: Write general description for SCHEDULE
      SCHEDULE = 'SCHEDULE'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEE_RESPONSIBILITY_SOURCES.include?(value)
    end

    def self.from_value(value, default_value = CREDIT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'credit' then CREDIT
      when 'schedule' then SCHEDULE
      else
        default_value
      end
    end
  end
end
