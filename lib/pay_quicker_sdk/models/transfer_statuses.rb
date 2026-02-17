# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Current status of a [transfer](#/rest/models/structures/transfer)
  class TransferStatuses
    TRANSFER_STATUSES = [
      # TODO: Write general description for ACCEPTED
      ACCEPTED = 'ACCEPTED'.freeze,

      # TODO: Write general description for CANCELLED
      CANCELLED = 'CANCELLED'.freeze,

      # TODO: Write general description for COMPLETED
      COMPLETED = 'COMPLETED'.freeze,

      # TODO: Write general description for EXPIRED
      EXPIRED = 'EXPIRED'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'FAILED'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'PENDING'.freeze,

      # TODO: Write general description for PENDING_ACCEPTANCE
      PENDING_ACCEPTANCE = 'PENDING_ACCEPTANCE'.freeze,

      # TODO: Write general description for QUOTED
      QUOTED = 'QUOTED'.freeze,

      # TODO: Write general description for RETURNED
      RETURNED = 'RETURNED'.freeze,

      # TODO: Write general description for SCHEDULED
      SCHEDULED = 'SCHEDULED'.freeze,

      # TODO: Write general description for VERIFICATION_HOLD
      VERIFICATION_HOLD = 'VERIFICATION_HOLD'.freeze,

      # TODO: Write general description for VOIDED
      VOIDED = 'VOIDED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSFER_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = ACCEPTED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'accepted' then ACCEPTED
      when 'cancelled' then CANCELLED
      when 'completed' then COMPLETED
      when 'expired' then EXPIRED
      when 'failed' then FAILED
      when 'pending' then PENDING
      when 'pending_acceptance' then PENDING_ACCEPTANCE
      when 'quoted' then QUOTED
      when 'returned' then RETURNED
      when 'scheduled' then SCHEDULED
      when 'verification_hold' then VERIFICATION_HOLD
      when 'voided' then VOIDED
      else
        default_value
      end
    end
  end
end
