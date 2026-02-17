# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Account [ownership types](#/rest/models/structures/bank-account-ownership)
  class BankAccountOwnership
    BANK_ACCOUNT_OWNERSHIP = [
      # TODO: Write general description for BUSINESS
      BUSINESS = 'BUSINESS'.freeze,

      # TODO: Write general description for PERSONAL
      PERSONAL = 'PERSONAL'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_OWNERSHIP.include?(value)
    end

    def self.from_value(value, default_value = BUSINESS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'business' then BUSINESS
      when 'personal' then PERSONAL
      else
        default_value
      end
    end
  end
end
