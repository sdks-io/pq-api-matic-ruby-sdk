# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # _UserImpact.
  class UserImpact
    USER_IMPACT = [
      # TODO: Write general description for NO_IMPACT
      NO_IMPACT = 'NO_IMPACT'.freeze,

      # TODO: Write general description for USER_RESTRICTIONS
      USER_RESTRICTIONS = 'USER_RESTRICTIONS'.freeze,

      # TODO: Write general description for USER_SUSPENDED
      USER_SUSPENDED = 'USER_SUSPENDED'.freeze,

      # TODO: Write general description for USER_PENDING_REGISTRATION
      USER_PENDING_REGISTRATION = 'USER_PENDING_REGISTRATION'.freeze,

      # TODO: Write general description for USER_CLOSED
      USER_CLOSED = 'USER_CLOSED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      USER_IMPACT.include?(value)
    end

    def self.from_value(value, default_value = NO_IMPACT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'no_impact' then NO_IMPACT
      when 'user_restrictions' then USER_RESTRICTIONS
      when 'user_suspended' then USER_SUSPENDED
      when 'user_pending_registration' then USER_PENDING_REGISTRATION
      when 'user_closed' then USER_CLOSED
      else
        default_value
      end
    end
  end
end
