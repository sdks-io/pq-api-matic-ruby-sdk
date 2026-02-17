# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Receipt status types
  class ReceiptStatuses
    RECEIPT_STATUSES = [
      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'PENDING'.freeze,

      # TODO: Write general description for COMPLETE
      COMPLETE = 'COMPLETE'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'FAILED'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'CANCELED'.freeze,

      # TODO: Write general description for SCHEDULED
      SCHEDULED = 'SCHEDULED'.freeze,

      # TODO: Write general description for REVIEW_REQUIRED
      REVIEW_REQUIRED = 'REVIEW_REQUIRED'.freeze,

      # TODO: Write general description for EXPIRED
      EXPIRED = 'EXPIRED'.freeze,

      # TODO: Write general description for REFUNDED
      REFUNDED = 'REFUNDED'.freeze,

      # TODO: Write general description for PROCESSING
      PROCESSING = 'PROCESSING'.freeze,

      # TODO: Write general description for REVERSED
      REVERSED = 'REVERSED'.freeze,

      # TODO: Write general description for UNSETTLED
      UNSETTLED = 'UNSETTLED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      RECEIPT_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = UNDEFINED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'undefined' then UNDEFINED
      when 'pending' then PENDING
      when 'complete' then COMPLETE
      when 'failed' then FAILED
      when 'canceled' then CANCELED
      when 'scheduled' then SCHEDULED
      when 'review_required' then REVIEW_REQUIRED
      when 'expired' then EXPIRED
      when 'refunded' then REFUNDED
      when 'processing' then PROCESSING
      when 'reversed' then REVERSED
      when 'unsettled' then UNSETTLED
      else
        default_value
      end
    end
  end
end
