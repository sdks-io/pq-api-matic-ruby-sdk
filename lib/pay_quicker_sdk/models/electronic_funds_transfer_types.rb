# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The type of transfer performed
  class ElectronicFundsTransferTypes
    ELECTRONIC_FUNDS_TRANSFER_TYPES = [
      # TODO: Write general description for MANUAL
      MANUAL = 'MANUAL'.freeze,

      # TODO: Write general description for AUTOMATIC
      AUTOMATIC = 'AUTOMATIC'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ELECTRONIC_FUNDS_TRANSFER_TYPES.include?(value)
    end

    def self.from_value(value, default_value = MANUAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'manual' then MANUAL
      when 'automatic' then AUTOMATIC
      else
        default_value
      end
    end
  end
end
