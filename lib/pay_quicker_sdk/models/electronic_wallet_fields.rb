# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies electronic wallet [field
  # types](#/rest/models/structures/electronic-wallet-fields)
  class ElectronicWalletFields
    ELECTRONIC_WALLET_FIELDS = [
      # Unknown or unrecognized.
      UNDEFINED = 'UNDEFINED'.freeze,

      # Used for credit party identifier. For example,`012345678`.
      ACCOUNT_NUMBER = 'ACCOUNT_NUMBER'.freeze,

      # Used for credit party identifier. For example,`012345678`.
      GOVERNMENT_ID = 'GOVERNMENT_ID'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ELECTRONIC_WALLET_FIELDS.include?(value)
    end

    def self.from_value(value, default_value = UNDEFINED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'undefined' then UNDEFINED
      when 'account_number' then ACCOUNT_NUMBER
      when 'government_id' then GOVERNMENT_ID
      else
        default_value
      end
    end
  end
end
