# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __EventRequirements.
  class EventRequirements
    EVENT_REQUIREMENTS = [
      # TODO: Write general description for ACH_UPGRADE_PII_DETAILS_VALIDATED
      ACH_UPGRADE_PII_DETAILS_VALIDATED = 'ACH_UPGRADE_PII_DETAILS_VALIDATED'.freeze,

      # TODO: Write general description for AGREEMENTS_ACCEPTED
      AGREEMENTS_ACCEPTED = 'AGREEMENTS_ACCEPTED'.freeze,

      # TODO: Write general description for DOCUMENTS_REQUIRED
      DOCUMENTS_REQUIRED = 'DOCUMENTS_REQUIRED'.freeze,

      # TODO: Write general description for EMAIL_ADDRESS_VERIFIED
      EMAIL_ADDRESS_VERIFIED = 'EMAIL_ADDRESS_VERIFIED'.freeze,

      # TODO: Write general description for FINANCIAL_PROCESSOR_ACCOUNT_CREATED
      FINANCIAL_PROCESSOR_ACCOUNT_CREATED = 'FINANCIAL_PROCESSOR_ACCOUNT_CREATED'.freeze,

      # TODO: Write general description for IDENTITY_VERIFIED
      IDENTITY_VERIFIED = 'IDENTITY_VERIFIED'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_CANCELLED
      MFA_REGISTRATION_CANCELLED = 'MFA_REGISTRATION_CANCELLED'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_CHALLENGE_SENT
      MFA_REGISTRATION_CHALLENGE_SENT = 'MFA_REGISTRATION_CHALLENGE_SENT'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_COMPLETED
      MFA_REGISTRATION_COMPLETED = 'MFA_REGISTRATION_COMPLETED'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_PII_COLLECTED
      MFA_REGISTRATION_PII_COLLECTED = 'MFA_REGISTRATION_PII_COLLECTED'.freeze,

      # TODO: Write general description for
      # MFA_REGISTRATION_PROCESSOR_REGISTRATION
      MFA_REGISTRATION_PROCESSOR_REGISTRATION = 'MFA_REGISTRATION_PROCESSOR_REGISTRATION'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_TYPE_CHANGED
      MFA_REGISTRATION_TYPE_CHANGED = 'MFA_REGISTRATION_TYPE_CHANGED'.freeze,

      # TODO: Write general description for MFA_REGISTRATION_VALIDATION
      MFA_REGISTRATION_VALIDATION = 'MFA_REGISTRATION_VALIDATION'.freeze,

      # TODO: Write general description for ORDER_PLASTIC_CARD
      ORDER_PLASTIC_CARD = 'ORDER_PLASTIC_CARD'.freeze,

      # TODO: Write general description for PEP_SANCTIONS_SCREENING_VERIFIED
      PEP_SANCTIONS_SCREENING_VERIFIED = 'PEP_SANCTIONS_SCREENING_VERIFIED'.freeze,

      # TODO: Write general description for PERSONAL_DETAILS_COLLECTED
      PERSONAL_DETAILS_COLLECTED = 'PERSONAL_DETAILS_COLLECTED'.freeze,

      # TODO: Write general description for PROCESS_EXECUTED
      PROCESS_EXECUTED = 'PROCESS_EXECUTED'.freeze,

      # TODO: Write general description for TYPE_UNDEFINED
      TYPE_UNDEFINED = 'TYPE_UNDEFINED'.freeze,

      # TODO: Write general description for USER_CREATED
      USER_CREATED = 'USER_CREATED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_REQUIREMENTS.include?(value)
    end

    def self.from_value(value, default_value = ACH_UPGRADE_PII_DETAILS_VALIDATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'ach_upgrade_pii_details_validated' then ACH_UPGRADE_PII_DETAILS_VALIDATED
      when 'agreements_accepted' then AGREEMENTS_ACCEPTED
      when 'documents_required' then DOCUMENTS_REQUIRED
      when 'email_address_verified' then EMAIL_ADDRESS_VERIFIED
      when 'financial_processor_account_created' then FINANCIAL_PROCESSOR_ACCOUNT_CREATED
      when 'identity_verified' then IDENTITY_VERIFIED
      when 'mfa_registration_cancelled' then MFA_REGISTRATION_CANCELLED
      when 'mfa_registration_challenge_sent' then MFA_REGISTRATION_CHALLENGE_SENT
      when 'mfa_registration_completed' then MFA_REGISTRATION_COMPLETED
      when 'mfa_registration_pii_collected' then MFA_REGISTRATION_PII_COLLECTED
      when 'mfa_registration_processor_registration' then MFA_REGISTRATION_PROCESSOR_REGISTRATION
      when 'mfa_registration_type_changed' then MFA_REGISTRATION_TYPE_CHANGED
      when 'mfa_registration_validation' then MFA_REGISTRATION_VALIDATION
      when 'order_plastic_card' then ORDER_PLASTIC_CARD
      when 'pep_sanctions_screening_verified' then PEP_SANCTIONS_SCREENING_VERIFIED
      when 'personal_details_collected' then PERSONAL_DETAILS_COLLECTED
      when 'process_executed' then PROCESS_EXECUTED
      when 'type_undefined' then TYPE_UNDEFINED
      when 'user_created' then USER_CREATED
      else
        default_value
      end
    end
  end
end
