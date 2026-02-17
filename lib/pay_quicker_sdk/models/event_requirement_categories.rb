# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __EventRequirementCategories.
  class EventRequirementCategories
    EVENT_REQUIREMENT_CATEGORIES = [
      # TODO: Write general description for ACKNOWLEDGEMENT
      ACKNOWLEDGEMENT = 'ACKNOWLEDGEMENT'.freeze,

      # TODO: Write general description for CATEGORY_UNDEFINED
      CATEGORY_UNDEFINED = 'CATEGORY_UNDEFINED'.freeze,

      # TODO: Write general description for EXTERNAL_REFERENCE_KYC
      EXTERNAL_REFERENCE_KYC = 'EXTERNAL_REFERENCE_KYC'.freeze,

      # TODO: Write general description for GEO_IP_VERIFICATION
      GEO_IP_VERIFICATION = 'GEO_IP_VERIFICATION'.freeze,

      # TODO: Write general description for KYC
      KYC = 'KYC'.freeze,

      # TODO: Write general description for TAX
      TAX = 'TAX'.freeze,

      # TODO: Write general description for VIDEO_CALL_KYC
      VIDEO_CALL_KYC = 'VIDEO_CALL_KYC'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_REQUIREMENT_CATEGORIES.include?(value)
    end

    def self.from_value(value, default_value = ACKNOWLEDGEMENT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'acknowledgement' then ACKNOWLEDGEMENT
      when 'category_undefined' then CATEGORY_UNDEFINED
      when 'external_reference_kyc' then EXTERNAL_REFERENCE_KYC
      when 'geo_ip_verification' then GEO_IP_VERIFICATION
      when 'kyc' then KYC
      when 'tax' then TAX
      when 'video_call_kyc' then VIDEO_CALL_KYC
      else
        default_value
      end
    end
  end
end
