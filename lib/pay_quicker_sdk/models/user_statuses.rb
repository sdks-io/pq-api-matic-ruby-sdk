# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Status of the user [User status type](#/rest/models/structures/user-status)
  class UserStatuses
    USER_STATUSES = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'ACTIVE'.freeze,

      # TODO: Write general description for CLOSED
      CLOSED = 'CLOSED'.freeze,

      # TODO: Write general description for IN_PROGRESS
      IN_PROGRESS = 'IN_PROGRESS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      USER_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'closed' then CLOSED
      when 'in_progress' then IN_PROGRESS
      else
        default_value
      end
    end
  end
end
