# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Result type of
  # [verification](#/rest/models/structures/identity-verification-result-type)
  class IdentityVerificationResultTypes
    IDENTITY_VERIFICATION_RESULT_TYPES = [
      # TODO: Write general description for PASS
      PASS = 'PASS'.freeze,

      # TODO: Write general description for SERVICE_OFFLINE
      SERVICE_OFFLINE = 'SERVICE_OFFLINE'.freeze,

      # TODO: Write general description for FAIL
      FAIL = 'FAIL'.freeze,

      # TODO: Write general description for PROCESSING
      PROCESSING = 'PROCESSING'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for NOTYETEXECUTED
      NOTYETEXECUTED = 'NOTYETEXECUTED'.freeze,

      # TODO: Write general description for EXPIRED
      EXPIRED = 'EXPIRED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      IDENTITY_VERIFICATION_RESULT_TYPES.include?(value)
    end

    def self.from_value(value, default_value = PASS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'pass' then PASS
      when 'service_offline' then SERVICE_OFFLINE
      when 'fail' then FAIL
      when 'processing' then PROCESSING
      when 'undefined' then UNDEFINED
      when 'notyetexecuted' then NOTYETEXECUTED
      when 'expired' then EXPIRED
      else
        default_value
      end
    end
  end
end
