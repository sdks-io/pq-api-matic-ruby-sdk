# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Indicates the current verification status type of an event.
  class EventStatuses
    EVENT_STATUSES = [
      # TO BE DONE
      UNDEFINED = 'UNDEFINED'.freeze,

      # Processing of the event has been canceled.
      CANCELLED = 'CANCELLED'.freeze,

      # Processing of the event has been completed.
      COMPLETED = 'COMPLETED'.freeze,

      # The event is currently being processed.
      IN_PROGRESS = 'IN_PROGRESS'.freeze,

      # The event is waiting to be processed.
      PENDING = 'PENDING'.freeze,

      # The event processing has been suspended.
      SUSPENDED = 'SUSPENDED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = UNDEFINED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'undefined' then UNDEFINED
      when 'cancelled' then CANCELLED
      when 'completed' then COMPLETED
      when 'in_progress' then IN_PROGRESS
      when 'pending' then PENDING
      when 'suspended' then SUSPENDED
      else
        default_value
      end
    end
  end
end
