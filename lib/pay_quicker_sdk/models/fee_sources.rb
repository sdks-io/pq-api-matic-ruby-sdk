# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Fee source types
  class FeeSources
    FEE_SOURCES = [
      # TODO: Write general description for TRANSACTION
      TRANSACTION = 'TRANSACTION'.freeze,

      # TODO: Write general description for USER
      USER = 'USER'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEE_SOURCES.include?(value)
    end

    def self.from_value(value, default_value = TRANSACTION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'transaction' then TRANSACTION
      when 'user' then USER
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
