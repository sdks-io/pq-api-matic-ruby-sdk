# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Type of [lockside](page:additional-api-information/transfer-lockside-types)
  # for transfers.
  class LockSideTypes
    LOCK_SIDE_TYPES = [
      # TODO: Write general description for SOURCE
      SOURCE = 'SOURCE'.freeze,

      # TODO: Write general description for DESTINATION
      DESTINATION = 'DESTINATION'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LOCK_SIDE_TYPES.include?(value)
    end

    def self.from_value(value, default_value = SOURCE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'source' then SOURCE
      when 'destination' then DESTINATION
      else
        default_value
      end
    end
  end
end
