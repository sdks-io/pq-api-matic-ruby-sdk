# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Used to identify the [purpose of a
  # payment](#/models/structures/payment-object) and impacts reporting and
  # calculated taxable earnings (if utilizing tax services)
  class PaymentPurposes
    PAYMENT_PURPOSES = [
      # TODO: Write general description for BONUS
      BONUS = 'BONUS'.freeze,

      # TODO: Write general description for EXPENSE
      EXPENSE = 'EXPENSE'.freeze,

      # TODO: Write general description for INCOME
      INCOME = 'INCOME'.freeze,

      # TODO: Write general description for NON_TAXABLE
      NON_TAXABLE = 'NON_TAXABLE'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'OTHER'.freeze,

      # TODO: Write general description for TAXABLE
      TAXABLE = 'TAXABLE'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PAYMENT_PURPOSES.include?(value)
    end

    def self.from_value(value, default_value = BONUS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'bonus' then BONUS
      when 'expense' then EXPENSE
      when 'income' then INCOME
      when 'non_taxable' then NON_TAXABLE
      when 'other' then OTHER
      when 'taxable' then TAXABLE
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
