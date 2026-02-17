# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Financial purpose of the [bank
  # account](#/rest/models/structures/bank-account-type)
  class BankAccountTypes
    BANK_ACCOUNT_TYPES = [
      # An account at a financial institution against which checks can be drawn
      # by the account depositor.
      CHECKING = 'CHECKING'.freeze,

      # An interest-bearing account at a bank or credit union.
      MONEY_MARKET = 'MONEY_MARKET'.freeze,

      # An account at a financial institution that pays interest but cannot be
      # used directly as money in the narrow sense of a medium of exchange.
      SAVINGS = 'SAVINGS'.freeze,

      # Unknown or unrecognized.
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_TYPES.include?(value)
    end

    def self.from_value(value, default_value = CHECKING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'checking' then CHECKING
      when 'money_market' then MONEY_MARKET
      when 'savings' then SAVINGS
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
