# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Indicates the enums for KYC.
  class DocumentTypes
    DOCUMENT_TYPES = [
      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for ARMED_FORCES_ID_CARD
      ARMED_FORCES_ID_CARD = 'ARMED_FORCES_ID_CARD'.freeze,

      # TODO: Write general description for BANK_OR_CREDIT_CARD_STATEMENT
      BANK_OR_CREDIT_CARD_STATEMENT = 'BANK_OR_CREDIT_CARD_STATEMENT'.freeze,

      # TODO: Write general description for BANK_REFERENCE_LETTER
      BANK_REFERENCE_LETTER = 'BANK_REFERENCE_LETTER'.freeze,

      # TODO: Write general description for BIRTH_CERTIFICATE
      BIRTH_CERTIFICATE = 'BIRTH_CERTIFICATE'.freeze,

      # TODO: Write general description for DEED_POLL
      DEED_POLL = 'DEED_POLL'.freeze,

      # TODO: Write general description for DEED_POLL_NAME_CHANGE
      DEED_POLL_NAME_CHANGE = 'DEED_POLL_NAME_CHANGE'.freeze,

      # TODO: Write general description for DRIVERS_LICENSE
      DRIVERS_LICENSE = 'DRIVERS_LICENSE'.freeze,

      # TODO: Write general description for DRIVERS_LICENSE_BACK
      DRIVERS_LICENSE_BACK = 'DRIVERS_LICENSE_BACK'.freeze,

      # TODO: Write general description for DRIVERS_LICENSE_NAME_CHANGE
      DRIVERS_LICENSE_NAME_CHANGE = 'DRIVERS_LICENSE_NAME_CHANGE'.freeze,

      # TODO: Write general description for FIREARMS_LICENSE
      FIREARMS_LICENSE = 'FIREARMS_LICENSE'.freeze,

      # TODO: Write general description for HEALTH_ID_CARD
      HEALTH_ID_CARD = 'HEALTH_ID_CARD'.freeze,

      # TODO: Write general description for HIGH_QUALITY_HEADSHOT
      HIGH_QUALITY_HEADSHOT = 'HIGH_QUALITY_HEADSHOT'.freeze,

      # TODO: Write general description for MARRIAGE_LICENSE
      MARRIAGE_LICENSE = 'MARRIAGE_LICENSE'.freeze,

      # TODO: Write general description for MARRIAGE_LICENSE_NAME_CHANGE
      MARRIAGE_LICENSE_NAME_CHANGE = 'MARRIAGE_LICENSE_NAME_CHANGE'.freeze,

      # TODO: Write general description for MATRICULA_CONSULAR_ID_CARD
      MATRICULA_CONSULAR_ID_CARD = 'MATRICULA_CONSULAR_ID_CARD'.freeze,

      # TODO: Write general description for NATIONAL_IDENTITY_CARD
      NATIONAL_IDENTITY_CARD = 'NATIONAL_IDENTITY_CARD'.freeze,

      # TODO: Write general description for NATIONAL_IDENTITY_CARD_FRONT
      NATIONAL_IDENTITY_CARD_FRONT = 'NATIONAL_IDENTITY_CARD_FRONT'.freeze,

      # TODO: Write general description for NATIONAL_IDENTITY_CARD_BACK
      NATIONAL_IDENTITY_CARD_BACK = 'NATIONAL_IDENTITY_CARD_BACK'.freeze,

      # TODO: Write general description for NATIONAL_INSURANCE_CARD
      NATIONAL_INSURANCE_CARD = 'NATIONAL_INSURANCE_CARD'.freeze,

      # TODO: Write general description for OFFICIAL_NAME_CHANGE_DOCUMENT
      OFFICIAL_NAME_CHANGE_DOCUMENT = 'OFFICIAL_NAME_CHANGE_DOCUMENT'.freeze,

      # TODO: Write general description for OTHER_GOVERNMENT_ISSUED_ID
      OTHER_GOVERNMENT_ISSUED_ID = 'OTHER_GOVERNMENT_ISSUED_ID'.freeze,

      # TODO: Write general description for PASSPORT
      PASSPORT = 'PASSPORT'.freeze,

      # TODO: Write general description for PAY_STUB
      PAY_STUB = 'PAY_STUB'.freeze,

      # TODO: Write general description for PROOF_OF_AGE_CARD
      PROOF_OF_AGE_CARD = 'PROOF_OF_AGE_CARD'.freeze,

      # TODO: Write general description for PROVISIONAL_DRIVERS_LICENSE
      PROVISIONAL_DRIVERS_LICENSE = 'PROVISIONAL_DRIVERS_LICENSE'.freeze,

      # TODO: Write general description for PUBLIC_SERVICE_CARD_FRONT
      PUBLIC_SERVICE_CARD_FRONT = 'PUBLIC_SERVICE_CARD_FRONT'.freeze,

      # TODO: Write general description for PUBLIC_SERVICE_CARD_BACK
      PUBLIC_SERVICE_CARD_BACK = 'PUBLIC_SERVICE_CARD_BACK'.freeze,

      # TODO: Write general description for RESIDENT_CARD
      RESIDENT_CARD = 'RESIDENT_CARD'.freeze,

      # TODO: Write general description for RESIDENT_IMMIGRATION_CARD
      RESIDENT_IMMIGRATION_CARD = 'RESIDENT_IMMIGRATION_CARD'.freeze,

      # TODO: Write general description for SOCIAL_SECURITY_CARD
      SOCIAL_SECURITY_CARD = 'SOCIAL_SECURITY_CARD'.freeze,

      # TODO: Write general description for TAX_IDENTIFICATION_CARD_OR_LETTER
      TAX_IDENTIFICATION_CARD_OR_LETTER = 'TAX_IDENTIFICATION_CARD_OR_LETTER'.freeze,

      # TODO: Write general description for TAX_STATEMENT
      TAX_STATEMENT = 'TAX_STATEMENT'.freeze,

      # TODO: Write general description for UTILITY_BILL
      UTILITY_BILL = 'UTILITY_BILL'.freeze,

      # TODO: Write general description for VOTERS_CARD
      VOTERS_CARD = 'VOTERS_CARD'.freeze,

      # TODO: Write general description for ARMED_FORCES_ID_CARD_BACK
      ARMED_FORCES_ID_CARD_BACK = 'ARMED_FORCES_ID_CARD_BACK'.freeze,

      # TODO: Write general description for TAX_DOCUMENT
      TAX_DOCUMENT = 'TAX_DOCUMENT'.freeze,

      # TODO: Write general description for HEALTH_ID_CARD_BACK
      HEALTH_ID_CARD_BACK = 'HEALTH_ID_CARD_BACK'.freeze,

      # TODO: Write general description for PROOF_OF_AGE_CARD_BACK
      PROOF_OF_AGE_CARD_BACK = 'PROOF_OF_AGE_CARD_BACK'.freeze,

      # TODO: Write general description for
      # INDEPENDENT_PERSONAL_REFERENCE_DOCUMENT
      INDEPENDENT_PERSONAL_REFERENCE_DOCUMENT = 'INDEPENDENT_PERSONAL_REFERENCE_DOCUMENT'.freeze,

      # TODO: Write general description for VIDEO_CALL_FILE
      VIDEO_CALL_FILE = 'VIDEO_CALL_FILE'.freeze,

      # TODO: Write general description for
      # HOME_OR_AUTO_INSURANCE_CERTIFICATE_OR_SCHEDULE
      HOME_OR_AUTO_INSURANCE_CERTIFICATE_OR_SCHEDULE = 'HOME_OR_AUTO_INSURANCE_CERTIFICATE_OR_SCHEDULE'.freeze,

      # TODO: Write general description for DIVORCE_DECREE_NAME_CHANGE
      DIVORCE_DECREE_NAME_CHANGE = 'DIVORCE_DECREE_NAME_CHANGE'.freeze,

      # TODO: Write general description for
      # CIVIL_PARTNERSHIP_REGISTRATION_NAME_CHANGE
      CIVIL_PARTNERSHIP_REGISTRATION_NAME_CHANGE = 'CIVIL_PARTNERSHIP_REGISTRATION_NAME_CHANGE'.freeze,

      # TODO: Write general description for RENT_AGREEMENT
      RENT_AGREEMENT = 'RENT_AGREEMENT'.freeze,

      # TODO: Write general description for VEHICLE_REGISTRATION
      VEHICLE_REGISTRATION = 'VEHICLE_REGISTRATION'.freeze,

      # TODO: Write general description for BENEFITS_CONFIRMATION_LETTER
      BENEFITS_CONFIRMATION_LETTER = 'BENEFITS_CONFIRMATION_LETTER'.freeze,

      # TODO: Write general description for RESIDENT_CARD_BACK
      RESIDENT_CARD_BACK = 'RESIDENT_CARD_BACK'.freeze,

      # TODO: Write general description for LOAN_ACCOUNT_STATEMENT
      LOAN_ACCOUNT_STATEMENT = 'LOAN_ACCOUNT_STATEMENT'.freeze,

      # TODO: Write general description for PROCESSED_CHECK
      PROCESSED_CHECK = 'PROCESSED_CHECK'.freeze,

      # TODO: Write general description for RESIDENTIAL_DIRECTORY_LISTING
      RESIDENTIAL_DIRECTORY_LISTING = 'RESIDENTIAL_DIRECTORY_LISTING'.freeze,

      # TODO: Write general description for GENERIC_DOCUMENT
      GENERIC_DOCUMENT = 'GENERIC_DOCUMENT'.freeze,

      # TODO: Write general description for GOVERNMENT_ISSUED_PHOTOID
      GOVERNMENT_ISSUED_PHOTOID = 'GOVERNMENT_ISSUED_PHOTOID'.freeze,

      # TODO: Write general description for GOVERNMENT_ISSUED_PHOTO_ID_BACK
      GOVERNMENT_ISSUED_PHOTO_ID_BACK = 'GOVERNMENT_ISSUED_PHOTO_ID_BACK'.freeze,

      # TODO: Write general description for SOCIAL_INSURANCE_NUMBER_CARD
      SOCIAL_INSURANCE_NUMBER_CARD = 'SOCIAL_INSURANCE_NUMBER_CARD'.freeze,

      # TODO: Write general description for SOCIAL_INSURANCE_NUMBER_LETTER
      SOCIAL_INSURANCE_NUMBER_LETTER = 'SOCIAL_INSURANCE_NUMBER_LETTER'.freeze,

      # TODO: Write general description for
      # OTHER_SOCIAL_INSURANCE_NUMBER_DOCUMENT
      OTHER_SOCIAL_INSURANCE_NUMBER_DOCUMENT = 'OTHER_SOCIAL_INSURANCE_NUMBER_DOCUMENT'.freeze,

      # TODO: Write general description for PLASTIC_CARD_CUSTOM_IMAGE
      PLASTIC_CARD_CUSTOM_IMAGE = 'PLASTIC_CARD_CUSTOM_IMAGE'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DOCUMENT_TYPES.include?(value)
    end

    def self.from_value(value, default_value = UNDEFINED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'undefined' then UNDEFINED
      when 'armed_forces_id_card' then ARMED_FORCES_ID_CARD
      when 'bank_or_credit_card_statement' then BANK_OR_CREDIT_CARD_STATEMENT
      when 'bank_reference_letter' then BANK_REFERENCE_LETTER
      when 'birth_certificate' then BIRTH_CERTIFICATE
      when 'deed_poll' then DEED_POLL
      when 'deed_poll_name_change' then DEED_POLL_NAME_CHANGE
      when 'drivers_license' then DRIVERS_LICENSE
      when 'drivers_license_back' then DRIVERS_LICENSE_BACK
      when 'drivers_license_name_change' then DRIVERS_LICENSE_NAME_CHANGE
      when 'firearms_license' then FIREARMS_LICENSE
      when 'health_id_card' then HEALTH_ID_CARD
      when 'high_quality_headshot' then HIGH_QUALITY_HEADSHOT
      when 'marriage_license' then MARRIAGE_LICENSE
      when 'marriage_license_name_change' then MARRIAGE_LICENSE_NAME_CHANGE
      when 'matricula_consular_id_card' then MATRICULA_CONSULAR_ID_CARD
      when 'national_identity_card' then NATIONAL_IDENTITY_CARD
      when 'national_identity_card_front' then NATIONAL_IDENTITY_CARD_FRONT
      when 'national_identity_card_back' then NATIONAL_IDENTITY_CARD_BACK
      when 'national_insurance_card' then NATIONAL_INSURANCE_CARD
      when 'official_name_change_document' then OFFICIAL_NAME_CHANGE_DOCUMENT
      when 'other_government_issued_id' then OTHER_GOVERNMENT_ISSUED_ID
      when 'passport' then PASSPORT
      when 'pay_stub' then PAY_STUB
      when 'proof_of_age_card' then PROOF_OF_AGE_CARD
      when 'provisional_drivers_license' then PROVISIONAL_DRIVERS_LICENSE
      when 'public_service_card_front' then PUBLIC_SERVICE_CARD_FRONT
      when 'public_service_card_back' then PUBLIC_SERVICE_CARD_BACK
      when 'resident_card' then RESIDENT_CARD
      when 'resident_immigration_card' then RESIDENT_IMMIGRATION_CARD
      when 'social_security_card' then SOCIAL_SECURITY_CARD
      when 'tax_identification_card_or_letter' then TAX_IDENTIFICATION_CARD_OR_LETTER
      when 'tax_statement' then TAX_STATEMENT
      when 'utility_bill' then UTILITY_BILL
      when 'voters_card' then VOTERS_CARD
      when 'armed_forces_id_card_back' then ARMED_FORCES_ID_CARD_BACK
      when 'tax_document' then TAX_DOCUMENT
      when 'health_id_card_back' then HEALTH_ID_CARD_BACK
      when 'proof_of_age_card_back' then PROOF_OF_AGE_CARD_BACK
      when 'independent_personal_reference_document' then INDEPENDENT_PERSONAL_REFERENCE_DOCUMENT
      when 'video_call_file' then VIDEO_CALL_FILE
      when 'home_or_auto_insurance_certificate_or_schedule' then HOME_OR_AUTO_INSURANCE_CERTIFICATE_OR_SCHEDULE
      when 'divorce_decree_name_change' then DIVORCE_DECREE_NAME_CHANGE
      when 'civil_partnership_registration_name_change' then CIVIL_PARTNERSHIP_REGISTRATION_NAME_CHANGE
      when 'rent_agreement' then RENT_AGREEMENT
      when 'vehicle_registration' then VEHICLE_REGISTRATION
      when 'benefits_confirmation_letter' then BENEFITS_CONFIRMATION_LETTER
      when 'resident_card_back' then RESIDENT_CARD_BACK
      when 'loan_account_statement' then LOAN_ACCOUNT_STATEMENT
      when 'processed_check' then PROCESSED_CHECK
      when 'residential_directory_listing' then RESIDENTIAL_DIRECTORY_LISTING
      when 'generic_document' then GENERIC_DOCUMENT
      when 'government_issued_photoid' then GOVERNMENT_ISSUED_PHOTOID
      when 'government_issued_photo_id_back' then GOVERNMENT_ISSUED_PHOTO_ID_BACK
      when 'social_insurance_number_card' then SOCIAL_INSURANCE_NUMBER_CARD
      when 'social_insurance_number_letter' then SOCIAL_INSURANCE_NUMBER_LETTER
      when 'other_social_insurance_number_document' then OTHER_SOCIAL_INSURANCE_NUMBER_DOCUMENT
      when 'plastic_card_custom_image' then PLASTIC_CARD_CUSTOM_IMAGE
      else
        default_value
      end
    end
  end
end
