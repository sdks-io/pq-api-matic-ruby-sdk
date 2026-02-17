# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __EventTypes.
  class EventTypes
    EVENT_TYPES = [
      # TODO: Write general description for REQUIRED
      REQUIRED = 'REQUIRED'.freeze,

      # TODO: Write general description for OPTIONAL
      OPTIONAL = 'OPTIONAL'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_TYPES.include?(value)
    end

    def self.from_value(value, default_value = REQUIRED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'required' then REQUIRED
      when 'optional' then OPTIONAL
      else
        default_value
      end
    end
  end
end
