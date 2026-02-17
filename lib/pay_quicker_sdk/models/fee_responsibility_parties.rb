# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Fee responsibility types
  class FeeResponsibilityParties
    FEE_RESPONSIBILITY_PARTIES = [
      # TODO: Write general description for COMPANY
      COMPANY = 'COMPANY'.freeze,

      # TODO: Write general description for USER
      USER = 'USER'.freeze,

      # TODO: Write general description for PAYQUICKER
      PAYQUICKER = 'PAYQUICKER'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEE_RESPONSIBILITY_PARTIES.include?(value)
    end

    def self.from_value(value, default_value = COMPANY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'company' then COMPANY
      when 'user' then USER
      when 'payquicker' then PAYQUICKER
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
