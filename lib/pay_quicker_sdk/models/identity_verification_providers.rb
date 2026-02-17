# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Provider types of
  # [verification](#/rest/models/structures/identity-verification-provider-type)
  # that can be used for performing identity checks
  class IdentityVerificationProviders
    IDENTITY_VERIFICATION_PROVIDERS = [
      # TODO: Write general description for EQUIFAX
      EQUIFAX = 'EQUIFAX'.freeze,

      # TODO: Write general description for W2
      W2 = 'W2'.freeze,

      # TODO: Write general description for FISIDOLOGY
      FISIDOLOGY = 'FISIDOLOGY'.freeze,

      # TODO: Write general description for OFACANALYZER
      OFACANALYZER = 'OFACANALYZER'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for HOOYU
      HOOYU = 'HOOYU'.freeze,

      # TODO: Write general description for LEXISNEXISIVI
      LEXISNEXISIVI = 'LEXISNEXISIVI'.freeze,

      # TODO: Write general description for QOLO
      QOLO = 'QOLO'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      IDENTITY_VERIFICATION_PROVIDERS.include?(value)
    end

    def self.from_value(value, default_value = EQUIFAX)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'equifax' then EQUIFAX
      when 'w2' then W2
      when 'fisidology' then FISIDOLOGY
      when 'ofacanalyzer' then OFACANALYZER
      when 'undefined' then UNDEFINED
      when 'hooyu' then HOOYU
      when 'lexisnexisivi' then LEXISNEXISIVI
      when 'qolo' then QOLO
      else
        default_value
      end
    end
  end
end
