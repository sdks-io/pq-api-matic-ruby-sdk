# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Job Types
  class JobTypes
    JOB_TYPES = [
      # PAYMENTS.
      PAYMENTS = 'PAYMENTS'.freeze,

      # INVITATIONS.
      INVITATIONS = 'INVITATIONS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      JOB_TYPES.include?(value)
    end

    def self.from_value(value, default_value = PAYMENTS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'payments' then PAYMENTS
      when 'invitations' then INVITATIONS
      else
        default_value
      end
    end
  end
end
