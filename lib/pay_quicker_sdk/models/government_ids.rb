# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Indicates the type of ID submitted for user verification purposes.
  class GovernmentIds
    GOVERNMENT_IDS = [
      # Identity code for both citizens and residents of Mexico.
      CURP = 'CURP'.freeze,

      # Identity card with a photo issued by an official authority.
      NATIONAL_ID_CARD = 'NATIONAL_ID_CARD'.freeze,

      # Travel document that certifies the identity and nationality of its
      # holder.
      PASSPORT = 'PASSPORT'.freeze,

      # Social Security number for citizens of the United States.
      SSN = 'SSN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GOVERNMENT_IDS.include?(value)
    end

    def self.from_value(value, default_value = CURP)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'curp' then CURP
      when 'national_id_card' then NATIONAL_ID_CARD
      when 'passport' then PASSPORT
      when 'ssn' then SSN
      else
        default_value
      end
    end
  end
end
