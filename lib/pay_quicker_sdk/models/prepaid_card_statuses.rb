# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Current [status](#/rest/models/structures/prepaid-card-status) of the
  # prepaid card
  class PrepaidCardStatuses
    PREPAID_CARD_STATUSES = [
      # The prepaid card is active and ready to use.
      ACTIVATED = 'ACTIVATED'.freeze,

      # The prepaid card is damaged and is no longer usable.
      CLOSED = 'CLOSED'.freeze,

      # The prepaid card is expired and is no longer usable.
      CLOSED_LOST_STOLEN_DAMAGED = 'CLOSED_LOST_STOLEN_DAMAGED'.freeze,

      # The prepaid card has been suspended for compliance reasons.
      COMPLIANCE_HOLD = 'COMPLIANCE_HOLD'.freeze,

      # The expiration date set for the prepaid card has elapsed. The prepaid
      # card will no longer be accepted.
      EXPIRED = 'EXPIRED'.freeze,

      # The prepaid card has been created but has not yet been activated.
      # Instantly issued cards are activated automatically.Plastic cards are
      # activated upon delivery and require the CVV on the back of the prepaid
      # card to complete.
      PENDING_ACTIVATION = 'PENDING_ACTIVATION'.freeze,

      # The prepaid card is awaiting order placement and will transition to
      # PENDING_ACTIVATION once ordered.
      QUEUED = 'QUEUED'.freeze,

      # TO BE DONE
      STAGED = 'STAGED'.freeze,

      # The prepaid card has been suspended and may neither send nor receive
      # funds.
      SUSPENDED = 'SUSPENDED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PREPAID_CARD_STATUSES.include?(value)
    end

    def self.from_value(value, default_value = ACTIVATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'activated' then ACTIVATED
      when 'closed' then CLOSED
      when 'closed_lost_stolen_damaged' then CLOSED_LOST_STOLEN_DAMAGED
      when 'compliance_hold' then COMPLIANCE_HOLD
      when 'expired' then EXPIRED
      when 'pending_activation' then PENDING_ACTIVATION
      when 'queued' then QUEUED
      when 'staged' then STAGED
      when 'suspended' then SUSPENDED
      else
        default_value
      end
    end
  end
end
