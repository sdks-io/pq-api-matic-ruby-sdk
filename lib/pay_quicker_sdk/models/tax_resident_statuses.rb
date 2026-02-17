# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Tax [resident status type](#/rest/models/structures/tax-resident-status)
  class TaxResidentStatuses
    TAX_RESIDENT_STATUSES = [
      # TODO: Write general description for NO
      NO = 'NO'.freeze,

      # TODO: Write general description for YES
      YES = 'YES'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TAX_RESIDENT_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = NO)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'no' then NO
      when 'yes' then YES
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
