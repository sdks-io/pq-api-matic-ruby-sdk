# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Optional transfer methods applicable only to bank and e-wallet transfers.
  class TransferMethodTypes
    TRANSFER_METHOD_TYPES = [
      # TODO: Write general description for IACH
      IACH = 'IACH'.freeze,

      # TODO: Write general description for WIRE
      WIRE = 'WIRE'.freeze,

      # TODO: Write general description for US_SAMEDAY_IACH
      US_SAMEDAY_IACH = 'US_SAMEDAY_IACH'.freeze,

      # TODO: Write general description for STANDARD_EWALLET
      STANDARD_EWALLET = 'STANDARD_EWALLET'.freeze,

      # TODO: Write general description for STANDARD_POST
      STANDARD_POST = 'STANDARD_POST'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSFER_METHOD_TYPES.include?(value)
    end

    def self.from_value(value, default_value = IACH)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'iach' then IACH
      when 'wire' then WIRE
      when 'us_sameday_iach' then US_SAMEDAY_IACH
      when 'standard_ewallet' then STANDARD_EWALLET
      when 'standard_post' then STANDARD_POST
      else
        default_value
      end
    end
  end
end
