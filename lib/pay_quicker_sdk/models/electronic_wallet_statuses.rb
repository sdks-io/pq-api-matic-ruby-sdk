# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Current verification status type of the electronic wallet
  class ElectronicWalletStatuses
    ELECTRONIC_WALLET_STATUSES = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'ACTIVE'.freeze,

      # TODO: Write general description for DELETED
      DELETED = 'DELETED'.freeze,

      # TODO: Write general description for PENDING_VERIFICATION
      PENDING_VERIFICATION = 'PENDING_VERIFICATION'.freeze,

      # TODO: Write general description for VERIFIED
      VERIFIED = 'VERIFIED'.freeze,

      # TODO: Write general description for UNKNOWN
      UNKNOWN = 'UNKNOWN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ELECTRONIC_WALLET_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'deleted' then DELETED
      when 'pending_verification' then PENDING_VERIFICATION
      when 'verified' then VERIFIED
      when 'unknown' then UNKNOWN
      else
        default_value
      end
    end
  end
end
