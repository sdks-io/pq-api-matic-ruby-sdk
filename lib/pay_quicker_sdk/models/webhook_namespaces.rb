# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Namespace used to identify and refer to the object
  class WebhookNamespaces
    WEBHOOK_NAMESPACES = [
      # TODO: Write general description for BANKACCOUNTS_CREATED
      BANKACCOUNTS_CREATED = 'BANKACCOUNTS.CREATED'.freeze,

      # TODO: Write general description for
      # BANKACCOUNTS_UPDATED_DETAILS_MODIFIED
      BANKACCOUNTS_UPDATED_DETAILS_MODIFIED = 'BANKACCOUNTS.UPDATED.DETAILS.MODIFIED'.freeze,

      # TODO: Write general description for BANKACCOUNTS_UPDATED_STATUS_APPROVED
      BANKACCOUNTS_UPDATED_STATUS_APPROVED = 'BANKACCOUNTS.UPDATED.STATUS.APPROVED'.freeze,

      # TODO: Write general description for
      # BANKACCOUNTS_UPDATED_STATUS_COMPLIANCEHOLD
      BANKACCOUNTS_UPDATED_STATUS_COMPLIANCEHOLD = 'BANKACCOUNTS.UPDATED.STATUS.COMPLIANCEHOLD'.freeze,

      # TODO: Write general description for BANKACCOUNTS_UPDATED_STATUS_DELETED
      BANKACCOUNTS_UPDATED_STATUS_DELETED = 'BANKACCOUNTS.UPDATED.STATUS.DELETED'.freeze,

      # TODO: Write general description for PAPERCHECKS_CREATED
      PAPERCHECKS_CREATED = 'PAPERCHECKS.CREATED'.freeze,

      # TODO: Write general description for PAPERCHECKS_UPDATED_DETAILS_MODIFIED
      PAPERCHECKS_UPDATED_DETAILS_MODIFIED = 'PAPERCHECKS.UPDATED.DETAILS.MODIFIED'.freeze,

      # TODO: Write general description for PAPERCHECKS_UPDATED_STATUS_CANCELLED
      PAPERCHECKS_UPDATED_STATUS_CANCELLED = 'PAPERCHECKS.UPDATED.STATUS.CANCELLED'.freeze,

      # TODO: Write general description for
      # PAPERCHECKS_UPDATED_STATUS_INPROGRESS
      PAPERCHECKS_UPDATED_STATUS_INPROGRESS = 'PAPERCHECKS.UPDATED.STATUS.INPROGRESS'.freeze,

      # TODO: Write general description for PAPERCHECKS_UPDATED_STATUS_REDEEMED
      PAPERCHECKS_UPDATED_STATUS_REDEEMED = 'PAPERCHECKS.UPDATED.STATUS.REDEEMED'.freeze,

      # TODO: Write general description for PAYMENTQUOTES_ACCEPTED
      PAYMENTQUOTES_ACCEPTED = 'PAYMENTQUOTES.ACCEPTED'.freeze,

      # TODO: Write general description for PAYMENTQUOTES_CANCELLED
      PAYMENTQUOTES_CANCELLED = 'PAYMENTQUOTES.CANCELLED'.freeze,

      # TODO: Write general description for PAYMENTQUOTES_CREATED
      PAYMENTQUOTES_CREATED = 'PAYMENTQUOTES.CREATED'.freeze,

      # TODO: Write general description for PAYMENTQUOTES_VOIDED
      PAYMENTQUOTES_VOIDED = 'PAYMENTQUOTES.VOIDED'.freeze,

      # TODO: Write general description for PREPAIDCARDS_CREATED
      PREPAIDCARDS_CREATED = 'PREPAIDCARDS.CREATED'.freeze,

      # TODO: Write general description for PREPAIDCARDS_UPDATED_STATUS_ACTIVE
      PREPAIDCARDS_UPDATED_STATUS_ACTIVE = 'PREPAIDCARDS.UPDATED.STATUS.ACTIVE'.freeze,

      # TODO: Write general description for PREPAIDCARDS_UPDATED_STATUS_CLOSED
      PREPAIDCARDS_UPDATED_STATUS_CLOSED = 'PREPAIDCARDS.UPDATED.STATUS.CLOSED'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_CLOSEDEXPIRED
      PREPAIDCARDS_UPDATED_STATUS_CLOSEDEXPIRED = 'PREPAIDCARDS.UPDATED.STATUS.CLOSEDEXPIRED'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_CLOSEDFRAUD
      PREPAIDCARDS_UPDATED_STATUS_CLOSEDFRAUD = 'PREPAIDCARDS.UPDATED.STATUS.CLOSEDFRAUD'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_CLOSEDLOST
      PREPAIDCARDS_UPDATED_STATUS_CLOSEDLOST = 'PREPAIDCARDS.UPDATED.STATUS.CLOSEDLOST'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_CLOSEDSTOLEN
      PREPAIDCARDS_UPDATED_STATUS_CLOSEDSTOLEN = 'PREPAIDCARDS.UPDATED.STATUS.CLOSEDSTOLEN'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_COMPLIANCEHOLD
      PREPAIDCARDS_UPDATED_STATUS_COMPLIANCEHOLD = 'PREPAIDCARDS.UPDATED.STATUS.COMPLIANCEHOLD'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_PENDINGACTIVATION
      PREPAIDCARDS_UPDATED_STATUS_PENDINGACTIVATION = 'PREPAIDCARDS.UPDATED.STATUS.PENDINGACTIVATION'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_PENDINGORDER
      PREPAIDCARDS_UPDATED_STATUS_PENDINGORDER = 'PREPAIDCARDS.UPDATED.STATUS.PENDINGORDER'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_PENDINGRELEASE
      PREPAIDCARDS_UPDATED_STATUS_PENDINGRELEASE = 'PREPAIDCARDS.UPDATED.STATUS.PENDINGRELEASE'.freeze,

      # TODO: Write general description for
      # PREPAIDCARDS_UPDATED_STATUS_SUSPENDED
      PREPAIDCARDS_UPDATED_STATUS_SUSPENDED = 'PREPAIDCARDS.UPDATED.STATUS.SUSPENDED'.freeze,

      # TODO: Write general description for RECEIPTS_CREATED
      RECEIPTS_CREATED = 'RECEIPTS.CREATED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_DETAILS_MODIFIED
      RECEIPTS_UPDATED_DETAILS_MODIFIED = 'RECEIPTS.UPDATED.DETAILS.MODIFIED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_CANCELLED
      RECEIPTS_UPDATED_STATUS_CANCELLED = 'RECEIPTS.UPDATED.STATUS.CANCELLED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_COMPLETED
      RECEIPTS_UPDATED_STATUS_COMPLETED = 'RECEIPTS.UPDATED.STATUS.COMPLETED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_EXPIRED
      RECEIPTS_UPDATED_STATUS_EXPIRED = 'RECEIPTS.UPDATED.STATUS.EXPIRED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_FAILED
      RECEIPTS_UPDATED_STATUS_FAILED = 'RECEIPTS.UPDATED.STATUS.FAILED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_PENDING
      RECEIPTS_UPDATED_STATUS_PENDING = 'RECEIPTS.UPDATED.STATUS.PENDING'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_PROCESSING
      RECEIPTS_UPDATED_STATUS_PROCESSING = 'RECEIPTS.UPDATED.STATUS.PROCESSING'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_REFUNDED
      RECEIPTS_UPDATED_STATUS_REFUNDED = 'RECEIPTS.UPDATED.STATUS.REFUNDED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_RETURNED
      RECEIPTS_UPDATED_STATUS_RETURNED = 'RECEIPTS.UPDATED.STATUS.RETURNED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_REVERSED
      RECEIPTS_UPDATED_STATUS_REVERSED = 'RECEIPTS.UPDATED.STATUS.REVERSED'.freeze,

      # TODO: Write general description for
      # RECEIPTS_UPDATED_STATUS_REVIEWREQUIRED
      RECEIPTS_UPDATED_STATUS_REVIEWREQUIRED = 'RECEIPTS.UPDATED.STATUS.REVIEWREQUIRED'.freeze,

      # TODO: Write general description for RECEIPTS_UPDATED_STATUS_SCHEDULED
      RECEIPTS_UPDATED_STATUS_SCHEDULED = 'RECEIPTS.UPDATED.STATUS.SCHEDULED'.freeze,

      # TODO: Write general description for SPENDBACKQUOTES_ACCEPTED
      SPENDBACKQUOTES_ACCEPTED = 'SPENDBACKQUOTES.ACCEPTED'.freeze,

      # TODO: Write general description for SPENDBACKQUOTES_CANCELLED
      SPENDBACKQUOTES_CANCELLED = 'SPENDBACKQUOTES.CANCELLED'.freeze,

      # TODO: Write general description for SPENDBACKQUOTES_CREATED
      SPENDBACKQUOTES_CREATED = 'SPENDBACKQUOTES.CREATED'.freeze,

      # TODO: Write general description for SPENDBACKQUOTES_VOIDED
      SPENDBACKQUOTES_VOIDED = 'SPENDBACKQUOTES.VOIDED'.freeze,

      # TODO: Write general description for TRANSFERQUOTES_ACCEPTED
      TRANSFERQUOTES_ACCEPTED = 'TRANSFERQUOTES.ACCEPTED'.freeze,

      # TODO: Write general description for TRANSFERQUOTES_CANCELLED
      TRANSFERQUOTES_CANCELLED = 'TRANSFERQUOTES.CANCELLED'.freeze,

      # TODO: Write general description for TRANSFERQUOTES_CREATED
      TRANSFERQUOTES_CREATED = 'TRANSFERQUOTES.CREATED'.freeze,

      # TODO: Write general description for TRANSFERQUOTES_VOIDED
      TRANSFERQUOTES_VOIDED = 'TRANSFERQUOTES.VOIDED'.freeze,

      # TODO: Write general description for USEREVENTS_COMPLETED
      USEREVENTS_COMPLETED = 'USEREVENTS.COMPLETED'.freeze,

      # TODO: Write general description for USEREVENTS_STARTED
      USEREVENTS_STARTED = 'USEREVENTS.STARTED'.freeze,

      # TODO: Write general description for USEREVENTS_UPDATED
      USEREVENTS_UPDATED = 'USEREVENTS.UPDATED'.freeze,

      # TODO: Write general description for USERS_CREATED
      USERS_CREATED = 'USERS.CREATED'.freeze,

      # TODO: Write general description for USERS_UPDATED_IDV_FAILED
      USERS_UPDATED_IDV_FAILED = 'USERS.UPDATED.IDV.FAILED'.freeze,

      # TODO: Write general description for USERS_UPDATED_IDV_PASSED
      USERS_UPDATED_IDV_PASSED = 'USERS.UPDATED.IDV.PASSED'.freeze,

      # TODO: Write general description for USERS_UPDATED_KYC_APPROVED
      USERS_UPDATED_KYC_APPROVED = 'USERS.UPDATED.KYC.APPROVED'.freeze,

      # TODO: Write general description for USERS_UPDATED_KYC_PROVIDED
      USERS_UPDATED_KYC_PROVIDED = 'USERS.UPDATED.KYC.PROVIDED'.freeze,

      # TODO: Write general description for USERS_UPDATED_KYC_REJECTED
      USERS_UPDATED_KYC_REJECTED = 'USERS.UPDATED.KYC.REJECTED'.freeze,

      # TODO: Write general description for USERS_UPDATED_KYC_REQUIRED
      USERS_UPDATED_KYC_REQUIRED = 'USERS.UPDATED.KYC.REQUIRED'.freeze,

      # TODO: Write general description for
      # USERS_UPDATED_STATUS_REGISTRATIONCOMPLETE
      USERS_UPDATED_STATUS_REGISTRATIONCOMPLETE = 'USERS.UPDATED.STATUS.REGISTRATIONCOMPLETE'.freeze,

      # TODO: Write general description for
      # USERS_UPDATED_STATUS_REGISTRATIONINPROGRESS
      USERS_UPDATED_STATUS_REGISTRATIONINPROGRESS = 'USERS.UPDATED.STATUS.REGISTRATIONINPROGRESS'.freeze,

      # TODO: Write general description for ELECTRONICWALLETS_CREATED
      ELECTRONICWALLETS_CREATED = 'ELECTRONICWALLETS.CREATED'.freeze,

      # TODO: Write general description for
      # ELECTRONICWALLETS_UPDATED_DETAILS_MODIFIED
      ELECTRONICWALLETS_UPDATED_DETAILS_MODIFIED = 'ELECTRONICWALLETS.UPDATED.DETAILS.MODIFIED'.freeze,

      # TODO: Write general description for
      # ELECTRONICWALLETS_UPDATED_STATUS_APPROVED
      ELECTRONICWALLETS_UPDATED_STATUS_APPROVED = 'ELECTRONICWALLETS.UPDATED.STATUS.APPROVED'.freeze,

      # TODO: Write general description for
      # ELECTRONICWALLETS_UPDATED_STATUS_COMPLIANCEHOLD
      ELECTRONICWALLETS_UPDATED_STATUS_COMPLIANCEHOLD = 'ELECTRONICWALLETS.UPDATED.STATUS.COMPLIANCEHOLD'.freeze,

      # TODO: Write general description for
      # ELECTRONICWALLETS_UPDATED_STATUS_DELETED
      ELECTRONICWALLETS_UPDATED_STATUS_DELETED = 'ELECTRONICWALLETS.UPDATED.STATUS.DELETED'.freeze,

      # TODO: Write general description for UNKNOWN
      UNKNOWN = 'UNKNOWN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_NAMESPACES.include?(value)
    end

    def self.from_value(value, default_value = BANKACCOUNTS_CREATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'bankaccounts_created' then BANKACCOUNTS_CREATED
      when 'bankaccounts_updated_details_modified' then BANKACCOUNTS_UPDATED_DETAILS_MODIFIED
      when 'bankaccounts_updated_status_approved' then BANKACCOUNTS_UPDATED_STATUS_APPROVED
      when 'bankaccounts_updated_status_compliancehold' then BANKACCOUNTS_UPDATED_STATUS_COMPLIANCEHOLD
      when 'bankaccounts_updated_status_deleted' then BANKACCOUNTS_UPDATED_STATUS_DELETED
      when 'paperchecks_created' then PAPERCHECKS_CREATED
      when 'paperchecks_updated_details_modified' then PAPERCHECKS_UPDATED_DETAILS_MODIFIED
      when 'paperchecks_updated_status_cancelled' then PAPERCHECKS_UPDATED_STATUS_CANCELLED
      when 'paperchecks_updated_status_inprogress' then PAPERCHECKS_UPDATED_STATUS_INPROGRESS
      when 'paperchecks_updated_status_redeemed' then PAPERCHECKS_UPDATED_STATUS_REDEEMED
      when 'paymentquotes_accepted' then PAYMENTQUOTES_ACCEPTED
      when 'paymentquotes_cancelled' then PAYMENTQUOTES_CANCELLED
      when 'paymentquotes_created' then PAYMENTQUOTES_CREATED
      when 'paymentquotes_voided' then PAYMENTQUOTES_VOIDED
      when 'prepaidcards_created' then PREPAIDCARDS_CREATED
      when 'prepaidcards_updated_status_active' then PREPAIDCARDS_UPDATED_STATUS_ACTIVE
      when 'prepaidcards_updated_status_closed' then PREPAIDCARDS_UPDATED_STATUS_CLOSED
      when 'prepaidcards_updated_status_closedexpired' then PREPAIDCARDS_UPDATED_STATUS_CLOSEDEXPIRED
      when 'prepaidcards_updated_status_closedfraud' then PREPAIDCARDS_UPDATED_STATUS_CLOSEDFRAUD
      when 'prepaidcards_updated_status_closedlost' then PREPAIDCARDS_UPDATED_STATUS_CLOSEDLOST
      when 'prepaidcards_updated_status_closedstolen' then PREPAIDCARDS_UPDATED_STATUS_CLOSEDSTOLEN
      when 'prepaidcards_updated_status_compliancehold' then PREPAIDCARDS_UPDATED_STATUS_COMPLIANCEHOLD
      when 'prepaidcards_updated_status_pendingactivation' then PREPAIDCARDS_UPDATED_STATUS_PENDINGACTIVATION
      when 'prepaidcards_updated_status_pendingorder' then PREPAIDCARDS_UPDATED_STATUS_PENDINGORDER
      when 'prepaidcards_updated_status_pendingrelease' then PREPAIDCARDS_UPDATED_STATUS_PENDINGRELEASE
      when 'prepaidcards_updated_status_suspended' then PREPAIDCARDS_UPDATED_STATUS_SUSPENDED
      when 'receipts_created' then RECEIPTS_CREATED
      when 'receipts_updated_details_modified' then RECEIPTS_UPDATED_DETAILS_MODIFIED
      when 'receipts_updated_status_cancelled' then RECEIPTS_UPDATED_STATUS_CANCELLED
      when 'receipts_updated_status_completed' then RECEIPTS_UPDATED_STATUS_COMPLETED
      when 'receipts_updated_status_expired' then RECEIPTS_UPDATED_STATUS_EXPIRED
      when 'receipts_updated_status_failed' then RECEIPTS_UPDATED_STATUS_FAILED
      when 'receipts_updated_status_pending' then RECEIPTS_UPDATED_STATUS_PENDING
      when 'receipts_updated_status_processing' then RECEIPTS_UPDATED_STATUS_PROCESSING
      when 'receipts_updated_status_refunded' then RECEIPTS_UPDATED_STATUS_REFUNDED
      when 'receipts_updated_status_returned' then RECEIPTS_UPDATED_STATUS_RETURNED
      when 'receipts_updated_status_reversed' then RECEIPTS_UPDATED_STATUS_REVERSED
      when 'receipts_updated_status_reviewrequired' then RECEIPTS_UPDATED_STATUS_REVIEWREQUIRED
      when 'receipts_updated_status_scheduled' then RECEIPTS_UPDATED_STATUS_SCHEDULED
      when 'spendbackquotes_accepted' then SPENDBACKQUOTES_ACCEPTED
      when 'spendbackquotes_cancelled' then SPENDBACKQUOTES_CANCELLED
      when 'spendbackquotes_created' then SPENDBACKQUOTES_CREATED
      when 'spendbackquotes_voided' then SPENDBACKQUOTES_VOIDED
      when 'transferquotes_accepted' then TRANSFERQUOTES_ACCEPTED
      when 'transferquotes_cancelled' then TRANSFERQUOTES_CANCELLED
      when 'transferquotes_created' then TRANSFERQUOTES_CREATED
      when 'transferquotes_voided' then TRANSFERQUOTES_VOIDED
      when 'userevents_completed' then USEREVENTS_COMPLETED
      when 'userevents_started' then USEREVENTS_STARTED
      when 'userevents_updated' then USEREVENTS_UPDATED
      when 'users_created' then USERS_CREATED
      when 'users_updated_idv_failed' then USERS_UPDATED_IDV_FAILED
      when 'users_updated_idv_passed' then USERS_UPDATED_IDV_PASSED
      when 'users_updated_kyc_approved' then USERS_UPDATED_KYC_APPROVED
      when 'users_updated_kyc_provided' then USERS_UPDATED_KYC_PROVIDED
      when 'users_updated_kyc_rejected' then USERS_UPDATED_KYC_REJECTED
      when 'users_updated_kyc_required' then USERS_UPDATED_KYC_REQUIRED
      when 'users_updated_status_registrationcomplete' then USERS_UPDATED_STATUS_REGISTRATIONCOMPLETE
      when 'users_updated_status_registrationinprogress' then USERS_UPDATED_STATUS_REGISTRATIONINPROGRESS
      when 'electronicwallets_created' then ELECTRONICWALLETS_CREATED
      when 'electronicwallets_updated_details_modified' then ELECTRONICWALLETS_UPDATED_DETAILS_MODIFIED
      when 'electronicwallets_updated_status_approved' then ELECTRONICWALLETS_UPDATED_STATUS_APPROVED
      when 'electronicwallets_updated_status_compliancehold' then ELECTRONICWALLETS_UPDATED_STATUS_COMPLIANCEHOLD
      when 'electronicwallets_updated_status_deleted' then ELECTRONICWALLETS_UPDATED_STATUS_DELETED
      when 'unknown' then UNKNOWN
      else
        default_value
      end
    end
  end
end
