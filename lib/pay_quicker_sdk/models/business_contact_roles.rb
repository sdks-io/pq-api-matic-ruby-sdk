# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Business contact role
  class BusinessContactRoles
    BUSINESS_CONTACT_ROLES = [
      # TODO: Write general description for MANAGER
      MANAGER = 'MANAGER'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'OTHER'.freeze,

      # TODO: Write general description for OWNER
      OWNER = 'OWNER'.freeze,

      # TODO: Write general description for PARTNER
      PARTNER = 'PARTNER'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BUSINESS_CONTACT_ROLES.include?(value)
    end

    def self.from_value(value, default_value = MANAGER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'manager' then MANAGER
      when 'other' then OTHER
      when 'owner' then OWNER
      when 'partner' then PARTNER
      else
        default_value
      end
    end
  end
end
