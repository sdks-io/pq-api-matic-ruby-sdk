# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Account holder's profile [type](#/rest/models/structures/user-type)
  class UserTypes
    USER_TYPES = [
      # TODO: Write general description for BUSINESS
      BUSINESS = 'BUSINESS'.freeze,

      # TODO: Write general description for INDIVIDUAL
      INDIVIDUAL = 'INDIVIDUAL'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      USER_TYPES.include?(value)
    end

    def self.from_value(value, default_value = BUSINESS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'business' then BUSINESS
      when 'individual' then INDIVIDUAL
      else
        default_value
      end
    end
  end
end
