# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __WebhookSubscriptionStatuses.
  class WebhookSubscriptionStatuses
    WEBHOOK_SUBSCRIPTION_STATUSES = [
      # TODO: Write general description for AVAILABLE
      AVAILABLE = 'AVAILABLE'.freeze,

      # TODO: Write general description for SUBSCRIBED
      SUBSCRIBED = 'SUBSCRIBED'.freeze,

      # TODO: Write general description for UNSUBSCRIBED
      UNSUBSCRIBED = 'UNSUBSCRIBED'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_SUBSCRIPTION_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = AVAILABLE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'available' then AVAILABLE
      when 'subscribed' then SUBSCRIBED
      when 'unsubscribed' then UNSUBSCRIBED
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
