# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __AgreementTypes.
  class AgreementTypes
    AGREEMENT_TYPES = [
      # TODO: Write general description for CARD_HOLDER_AGREEMENT
      CARD_HOLDER_AGREEMENT = 'CARD_HOLDER_AGREEMENT'.freeze,

      # TODO: Write general description for CARD_HOLDER_AGREEMENT_CONSENT
      CARD_HOLDER_AGREEMENT_CONSENT = 'CARD_HOLDER_AGREEMENT_CONSENT'.freeze,

      # TODO: Write general description for CARD_LIMITS
      CARD_LIMITS = 'CARD_LIMITS'.freeze,

      # TODO: Write general description for E_SIGN_AND_CONSENT
      E_SIGN_AND_CONSENT = 'E_SIGN_AND_CONSENT'.freeze,

      # TODO: Write general description for FEE_AGREEMENT
      FEE_AGREEMENT = 'FEE_AGREEMENT'.freeze,

      # TODO: Write general description for PRIVACY_POLICY
      PRIVACY_POLICY = 'PRIVACY_POLICY'.freeze,

      # TODO: Write general description for PRIVACY_POLICY_ADDENDUM
      PRIVACY_POLICY_ADDENDUM = 'PRIVACY_POLICY_ADDENDUM'.freeze,

      # TODO: Write general description for TERMS_OF_USE
      TERMS_OF_USE = 'TERMS_OF_USE'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      AGREEMENT_TYPES.include?(value)
    end

    def self.from_value(value, default_value = CARD_HOLDER_AGREEMENT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'card_holder_agreement' then CARD_HOLDER_AGREEMENT
      when 'card_holder_agreement_consent' then CARD_HOLDER_AGREEMENT_CONSENT
      when 'card_limits' then CARD_LIMITS
      when 'e_sign_and_consent' then E_SIGN_AND_CONSENT
      when 'fee_agreement' then FEE_AGREEMENT
      when 'privacy_policy' then PRIVACY_POLICY
      when 'privacy_policy_addendum' then PRIVACY_POLICY_ADDENDUM
      when 'terms_of_use' then TERMS_OF_USE
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
