# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Sub result type of
  # [verification](#/rest/models/structures/identity-verification-sub-result-typ
  # e)
  class IdentityVerificationResultSubTypes
    IDENTITY_VERIFICATION_RESULT_SUB_TYPES = [
      # TODO: Write general description for HARD
      HARD = 'HARD'.freeze,

      # TODO: Write general description for SOFT
      SOFT = 'SOFT'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      IDENTITY_VERIFICATION_RESULT_SUB_TYPES.include?(value)
    end

    def self.from_value(value, default_value = HARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'hard' then HARD
      when 'soft' then SOFT
      else
        default_value
      end
    end
  end
end
