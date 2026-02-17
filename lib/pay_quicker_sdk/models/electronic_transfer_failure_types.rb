# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The type of failure for a bank transfer
  class ElectronicTransferFailureTypes
    ELECTRONIC_TRANSFER_FAILURE_TYPES = [
      # The account number is invalid or incorrect.
      INCORRECT_ACCOUNT_NUMBER = 'INCORRECT_ACCOUNT_NUMBER'.freeze,

      # The sort code or account number are invalid.
      INVALID_SORT_CODE = 'INVALID_SORT_CODE'.freeze,

      # No account was found with the details provided.
      ACCOUNT_NOT_FOUND = 'ACCOUNT_NOT_FOUND'.freeze,

      # The destination account number is invalid.
      DESTINATION_ACCOUNT_NUMBER_INVALID = 'DESTINATION_ACCOUNT_NUMBER_INVALID'.freeze,

      # The destination account number is invalid.
      BENEFICIARY_ACCOUNT_NUMBER_INVALID = 'BENEFICIARY_ACCOUNT_NUMBER_INVALID'.freeze,

      # The bank account is closed.
      ACCOUNT_CLOSED = 'ACCOUNT_CLOSED'.freeze,

      # GENERAL_COMPLIANCE
      GENERAL_COMPLIANCE = 'GENERAL_COMPLIANCE'.freeze,

      # INCORRECT_ROUTING_CODE
      INCORRECT_ROUTING_CODE = 'INCORRECT_ROUTING_CODE'.freeze,

      # BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT
      BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT = 'BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT'.freeze,

      # INVALID_INSUFFICIENT_PAYMENT_DETAILS
      INVALID_INSUFFICIENT_PAYMENT_DETAILS = 'INVALID_INSUFFICIENT_PAYMENT_DETAILS'.freeze,

      # INVALID_BENEFICIARY_NAME
      INVALID_BENEFICIARY_NAME = 'INVALID_BENEFICIARY_NAME'.freeze,

      # INVALID_BENEFICIARY_TAX_ID
      INVALID_BENEFICIARY_TAX_ID = 'INVALID_BENEFICIARY_TAX_ID'.freeze,

      # INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS
      INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS = 'INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS'.freeze,

      # INVALID_BENEFICIARY_ADDRESS
      INVALID_BENEFICIARY_ADDRESS = 'INVALID_BENEFICIARY_ADDRESS'.freeze,

      # BANK_UNABLE_TO_APPLY
      BANK_UNABLE_TO_APPLY = 'BANK_UNABLE_TO_APPLY'.freeze,

      # BANK_CODE_WRONG
      BANK_CODE_WRONG = 'BANK_CODE_WRONG'.freeze,

      # The transfer failed and the reason will be in the EFTFAILURECOMMENT
      # field
      OTHER = 'OTHER'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ELECTRONIC_TRANSFER_FAILURE_TYPES.include?(value)
    end

    def self.from_value(value, default_value = INCORRECT_ACCOUNT_NUMBER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'incorrect_account_number' then INCORRECT_ACCOUNT_NUMBER
      when 'invalid_sort_code' then INVALID_SORT_CODE
      when 'account_not_found' then ACCOUNT_NOT_FOUND
      when 'destination_account_number_invalid' then DESTINATION_ACCOUNT_NUMBER_INVALID
      when 'beneficiary_account_number_invalid' then BENEFICIARY_ACCOUNT_NUMBER_INVALID
      when 'account_closed' then ACCOUNT_CLOSED
      when 'general_compliance' then GENERAL_COMPLIANCE
      when 'incorrect_routing_code' then INCORRECT_ROUTING_CODE
      when 'below_min_above_max_allowed_amount' then BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT
      when 'invalid_insufficient_payment_details' then INVALID_INSUFFICIENT_PAYMENT_DETAILS
      when 'invalid_beneficiary_name' then INVALID_BENEFICIARY_NAME
      when 'invalid_beneficiary_tax_id' then INVALID_BENEFICIARY_TAX_ID
      when 'invalid_beneficiary_bank_branch_address' then INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS
      when 'invalid_beneficiary_address' then INVALID_BENEFICIARY_ADDRESS
      when 'bank_unable_to_apply' then BANK_UNABLE_TO_APPLY
      when 'bank_code_wrong' then BANK_CODE_WRONG
      when 'other' then OTHER
      else
        default_value
      end
    end
  end
end
