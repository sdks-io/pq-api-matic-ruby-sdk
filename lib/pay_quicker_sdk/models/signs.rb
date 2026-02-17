# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Receipt sign types
  class Signs
    SIGNS = [
      # TODO: Write general description for CREDIT
      CREDIT = 'CREDIT'.freeze,

      # TODO: Write general description for DEBIT
      DEBIT = 'DEBIT'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SIGNS.include?(value)
    end

    def self.from_value(value, default_value = CREDIT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'credit' then CREDIT
      when 'debit' then DEBIT
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
