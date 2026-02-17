# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies bank account [field
  # types](#/rest/models/structures/bank-account-fields)
  class BankAccountFields
    BANK_ACCOUNT_FIELDS = [
      # The nine-digit code based on the U.S. Bank location where the account
      # was opened.
      BANK_ACH_ABA = 'BANK_ACH_ABA'.freeze,

      # The code that identifies an individual account, at a specific financial
      # institution, in a particular country, often referred to as the acount
      # number.
      BANK_BBAN = 'BANK_BBAN'.freeze,

      # A code of a bank helps customers and bankers identify a particular bank
      # branch.
      BANK_BRANCH_CODE = 'BANK_BRANCH_CODE'.freeze,

      # Name of branch for the actual financial institution. For example,`Bank
      # of America`.
      BANK_BRANCH_NAME = 'BANK_BRANCH_NAME'.freeze,

      # The 6-digit number used to identify the individual branch of a financial
      # institution used in addition to the bank account number to identify the
      # recipient of a transfer. For example,`082902`. where: `08` is the
      # two-digit code for NAB bank. `2` is the branch is located in Australian
      # Capital Territory. `902` is the NAB branch in Canberra City.
      BANK_BSB_CODE = 'BANK_BSB_CODE'.freeze,

      # The city in which the bank or financial institution associated with an
      # account is located.
      BANK_CITY = 'BANK_CITY'.freeze,

      # CLABE (Clace Bancaria Estandarizada) The 18-digit account code
      # containing the payee's bank account number. For example,
      # `014027000000000008`.
      BANK_CLABE = 'BANK_CLABE'.freeze,

      # Bank code of bank assigned to a bank.
      BANK_CODE = 'BANK_CODE'.freeze,

      # The ID number provided by the Mexican government to Mexican citizens and
      # residents
      BANK_CURP = 'BANK_CURP'.freeze,

      # The standard international numbering system that identifies an overseas
      # bank account. The number starts with a two-digit country code, then two
      # numbers, followed by several more alphanumeric characters. For
      # example,`Norway: NO 93 8601 1117947`.
      BANK_IBAN = 'BANK_IBAN'.freeze,

      # Name of actual financial institution. For example,`Bank of America`.
      BANK_NAME = 'BANK_NAME'.freeze,

      # The 8- or 11-digit Business Identifier Code (BIC) for a bank that does
      # not allow for sending and receiving financial transaction information.
      # For example,`AAAABBCCDDD`.
      BANK_NON_SWIFT_BIC = 'BANK_NON_SWIFT_BIC'.freeze,

      # Nigerian Uniform Bank Account Number (NUBAN) The 10-digit standard
      # international numbering system that identifies a Nigerian bank account.
      # For example, `0000013679`. where: `000001367` is the serial number (the
      # first 9 digits) and is used to indicate which bank the NUBAN is
      # associated with, as well as to point to a specific bank account at that
      # bank. `9` (the last digit) is the [check
      # digit](https://en.wikipedia.org/wiki/Check_digit) that determines
      # whether the code in question is valid.
      BANK_NUBAN = 'BANK_NUBAN'.freeze,

      # The phone number for the actual financial institution.
      BANK_PHONE_NUMBER = 'BANK_PHONE_NUMBER'.freeze,

      # The 5-digit postal code of the account owner's permanent residence. For
      # example, `50314`.
      BANK_POSTAL_CODE = 'BANK_POSTAL_CODE'.freeze,

      # The code that represents the purpose for initiating a payment to a
      # foreign country. For example,`/BANK/FUND TR`which is a cross-border fund
      # transfer between banks.
      BANK_PURPOSE_OF_PAYMENT_CODE = 'BANK_PURPOSE_OF_PAYMENT_CODE'.freeze,

      # The two-letter region [ISO abbreviation
      # code](https://en.wikipedia.org/wiki/ISO_3166-1) of the bank's physical
      # address.
      BANK_REGION = 'BANK_REGION'.freeze,

      # Resident Foreign Currency (RFC)The account maintained in foreign
      # currencies for NRIs who have returned to India and hold funds in foreign
      # currency. For example, `USD` and `GBP`.
      BANK_RFC = 'BANK_RFC'.freeze,

      # Identifies both the bank and the branch where the account is held. Sort
      # codes used to route money transfers between financial institutions in
      # the United Kingdom and in the Republic of Ireland. For example,
      # `12-34-56`.
      BANK_SORT_CODE = 'BANK_SORT_CODE'.freeze,

      # TO BE DONE
      BANK_SSN = 'BANK_SSN'.freeze,

      # The bank address's most specific details, like `street number`, `street
      # name`, and `building name`.
      BANK_STREET_ADDRESS = 'BANK_STREET_ADDRESS'.freeze,

      # The 8- or 11-digit Business Identifier Code (BIC) for a bank that allows
      # for sending and receiving financial transaction information. For
      # example, `AAAABBCCDDD` where: `AAAA` is the 4-character bank code. `BB`
      # is the 2-character country code. `CC` is the 2-character location code.
      # `DD` is the 3-character branch code.
      BANK_SWIFT_BIC = 'BANK_SWIFT_BIC'.freeze,

      # The 9-digit code that identifies a specific financial institution. For
      # example, `XXXXYYYYC` where: `XXXX` is the 4-digit Federal Reserve
      # Routing Symbol. `YYYY` is the 4-digit ABA Institution Identifier. `C` is
      # the 1-digit check digit.
      BANK_TRANSIT_CODE = 'BANK_TRANSIT_CODE'.freeze,

      # The 9-digit value-added tax number for the bank that is designed to tax
      # only the value added by a business on top of the services and goods it
      # can purchase.
      BANK_VALUE_ADD_TAX = 'BANK_VALUE_ADD_TAX'.freeze,

      # The unique identifier for the beneficial owner. For
      # example,`caa81a5f-ec1e-4559-8b32-d90655bfd03c`.
      BENEFICIARY_ACCOUNT_NUMBER = 'BENEFICIARY_ACCOUNT_NUMBER'.freeze,

      # The beneficial owner's residential address.
      BENEFICIARY_ADDRESS = 'BENEFICIARY_ADDRESS'.freeze,

      # The legal full name for the beneficial owner.
      BENEFICIARY_NAME = 'BENEFICIARY_NAME'.freeze,

      # The phone number for the beneficial owner.
      BENEFICIARY_PHONE_NUMBER = 'BENEFICIARY_PHONE_NUMBER'.freeze,

      # The tax ID for the beneficial owner.
      BENEFICIARY_TAX_ID = 'BENEFICIARY_TAX_ID'.freeze,

      # Undefined or unrecognized bank account field.
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_FIELDS.include?(value)
    end

    def self.from_value(value, default_value = BANK_ACH_ABA)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'bank_ach_aba' then BANK_ACH_ABA
      when 'bank_bban' then BANK_BBAN
      when 'bank_branch_code' then BANK_BRANCH_CODE
      when 'bank_branch_name' then BANK_BRANCH_NAME
      when 'bank_bsb_code' then BANK_BSB_CODE
      when 'bank_city' then BANK_CITY
      when 'bank_clabe' then BANK_CLABE
      when 'bank_code' then BANK_CODE
      when 'bank_curp' then BANK_CURP
      when 'bank_iban' then BANK_IBAN
      when 'bank_name' then BANK_NAME
      when 'bank_non_swift_bic' then BANK_NON_SWIFT_BIC
      when 'bank_nuban' then BANK_NUBAN
      when 'bank_phone_number' then BANK_PHONE_NUMBER
      when 'bank_postal_code' then BANK_POSTAL_CODE
      when 'bank_purpose_of_payment_code' then BANK_PURPOSE_OF_PAYMENT_CODE
      when 'bank_region' then BANK_REGION
      when 'bank_rfc' then BANK_RFC
      when 'bank_sort_code' then BANK_SORT_CODE
      when 'bank_ssn' then BANK_SSN
      when 'bank_street_address' then BANK_STREET_ADDRESS
      when 'bank_swift_bic' then BANK_SWIFT_BIC
      when 'bank_transit_code' then BANK_TRANSIT_CODE
      when 'bank_value_add_tax' then BANK_VALUE_ADD_TAX
      when 'beneficiary_account_number' then BENEFICIARY_ACCOUNT_NUMBER
      when 'beneficiary_address' then BENEFICIARY_ADDRESS
      when 'beneficiary_name' then BENEFICIARY_NAME
      when 'beneficiary_phone_number' then BENEFICIARY_PHONE_NUMBER
      when 'beneficiary_tax_id' then BENEFICIARY_TAX_ID
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
