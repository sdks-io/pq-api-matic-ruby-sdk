# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ReceiptDetails Model.
  class ReceiptDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Bank account ID for the bank account
    # @return [String]
    attr_accessor :bank_account_id

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [BankAccountFields]
    attr_accessor :bank_account_id_type

    # Name of the bank the account is registered to
    # @return [String]
    attr_accessor :bank_name

    # The bank id
    # @return [String]
    attr_accessor :bank_id

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [BankAccountFields]
    attr_accessor :bank_id_type

    # The bank branch address
    # @return [String]
    attr_accessor :branch_address

    # The bank branch city
    # @return [String]
    attr_accessor :branch_city

    # The bank branch id
    # @return [String]
    attr_accessor :branch_id

    # The bank branch name
    # @return [String]
    attr_accessor :branch_name

    # The bank branch postal code
    # @return [String]
    attr_accessor :branch_postal_code

    # The bank branch phone number
    # @return [String]
    attr_accessor :branch_phone_number

    # The bank branch region
    # @return [String]
    attr_accessor :branch_region

    # The beneficiary's tax id
    # @return [String]
    attr_accessor :beneficary_tax_id

    # Classifies bank account [field
    # types](#/rest/models/structures/bank-account-fields)
    # @return [BankAccountFields]
    attr_accessor :beneficary_tax_id_type

    # The name of the person chosen to inherit your account
    # @return [String]
    attr_accessor :beneficary_name

    # Optional internal [memo](#/rest/models/structures/memo) not visible to the
    # user
    # @return [String]
    attr_accessor :memo

    # [Optional comments](#/rest/models/structures/notes) visible to the user
    # @return [String]
    attr_accessor :note

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :correlation_token

    # Date that the card will expire
    # @return [String]
    attr_accessor :card_expiry_date

    # Name of the card's owner
    # @return [String]
    attr_accessor :card_holder_name

    # Unique number on the prepaid card
    # @return [String]
    attr_accessor :card_number

    # Account number for the electronic wallet
    # @return [String]
    attr_accessor :electronic_wallet_account_number

    # Classifies electronic wallet [field
    # types](#/rest/models/structures/electronic-wallet-fields)
    # @return [ElectronicWalletFields]
    attr_accessor :electronic_wallet_account_number_type

    # Government ID for the electronic wallet
    # @return [String]
    attr_accessor :electronic_wallet_government_id

    # Classifies electronic wallet [field
    # types](#/rest/models/structures/electronic-wallet-fields)
    # @return [ElectronicWalletFields]
    attr_accessor :electronic_wallet_government_id_type

    # Name of the electronic wallet
    # @return [ElectronicWalletTypes]
    attr_accessor :electronic_wallet_type

    # Name of the electronic wallet
    # @return [String]
    attr_accessor :mobile_phone_number

    # The type of transfer performed
    # @return [ElectronicFundsTransferTypes]
    attr_accessor :electronic_funds_transfer_type

    # The type of failure for a bank transfer
    # @return [ElectronicTransferFailureTypes]
    attr_accessor :electronic_funds_transfer_failure_type

    # The status of a bank transfer
    # @return [ElectronicTransferStatusTypes]
    attr_accessor :electronic_transfer_status_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_account_id'] = 'bankAccountId'
      @_hash['bank_account_id_type'] = 'bankAccountIdType'
      @_hash['bank_name'] = 'bankName'
      @_hash['bank_id'] = 'bankId'
      @_hash['bank_id_type'] = 'bankIdType'
      @_hash['branch_address'] = 'branchAddress'
      @_hash['branch_city'] = 'branchCity'
      @_hash['branch_id'] = 'branchId'
      @_hash['branch_name'] = 'branchName'
      @_hash['branch_postal_code'] = 'branchPostalCode'
      @_hash['branch_phone_number'] = 'branchPhoneNumber'
      @_hash['branch_region'] = 'branchRegion'
      @_hash['beneficary_tax_id'] = 'beneficaryTaxId'
      @_hash['beneficary_tax_id_type'] = 'beneficaryTaxIdType'
      @_hash['beneficary_name'] = 'beneficaryName'
      @_hash['memo'] = 'memo'
      @_hash['note'] = 'note'
      @_hash['correlation_token'] = 'correlationToken'
      @_hash['card_expiry_date'] = 'cardExpiryDate'
      @_hash['card_holder_name'] = 'cardHolderName'
      @_hash['card_number'] = 'cardNumber'
      @_hash['electronic_wallet_account_number'] =
        'electronicWalletAccountNumber'
      @_hash['electronic_wallet_account_number_type'] =
        'electronicWalletAccountNumberType'
      @_hash['electronic_wallet_government_id'] =
        'electronicWalletGovernmentId'
      @_hash['electronic_wallet_government_id_type'] =
        'electronicWalletGovernmentIdType'
      @_hash['electronic_wallet_type'] = 'electronicWalletType'
      @_hash['mobile_phone_number'] = 'mobilePhoneNumber'
      @_hash['electronic_funds_transfer_type'] = 'electronicFundsTransferType'
      @_hash['electronic_funds_transfer_failure_type'] =
        'electronicFundsTransferFailureType'
      @_hash['electronic_transfer_status_type'] =
        'electronicTransferStatusType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_account_id
        bank_account_id_type
        bank_name
        bank_id
        bank_id_type
        branch_address
        branch_city
        branch_id
        branch_name
        branch_postal_code
        branch_phone_number
        branch_region
        beneficary_tax_id
        beneficary_tax_id_type
        beneficary_name
        memo
        note
        correlation_token
        card_expiry_date
        card_holder_name
        card_number
        electronic_wallet_account_number
        electronic_wallet_account_number_type
        electronic_wallet_government_id
        electronic_wallet_government_id_type
        electronic_wallet_type
        mobile_phone_number
        electronic_funds_transfer_type
        electronic_funds_transfer_failure_type
        electronic_transfer_status_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_account_id = SKIP, bank_account_id_type = SKIP,
                   bank_name = SKIP, bank_id = SKIP, bank_id_type = SKIP,
                   branch_address = SKIP, branch_city = SKIP, branch_id = SKIP,
                   branch_name = SKIP, branch_postal_code = SKIP,
                   branch_phone_number = SKIP, branch_region = SKIP,
                   beneficary_tax_id = SKIP, beneficary_tax_id_type = SKIP,
                   beneficary_name = SKIP, memo = SKIP, note = SKIP,
                   correlation_token = SKIP, card_expiry_date = SKIP,
                   card_holder_name = SKIP, card_number = SKIP,
                   electronic_wallet_account_number = SKIP,
                   electronic_wallet_account_number_type = SKIP,
                   electronic_wallet_government_id = SKIP,
                   electronic_wallet_government_id_type = SKIP,
                   electronic_wallet_type = SKIP, mobile_phone_number = SKIP,
                   electronic_funds_transfer_type = SKIP,
                   electronic_funds_transfer_failure_type = SKIP,
                   electronic_transfer_status_type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @bank_account_id = bank_account_id unless bank_account_id == SKIP
      @bank_account_id_type = bank_account_id_type unless bank_account_id_type == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @bank_id = bank_id unless bank_id == SKIP
      @bank_id_type = bank_id_type unless bank_id_type == SKIP
      @branch_address = branch_address unless branch_address == SKIP
      @branch_city = branch_city unless branch_city == SKIP
      @branch_id = branch_id unless branch_id == SKIP
      @branch_name = branch_name unless branch_name == SKIP
      @branch_postal_code = branch_postal_code unless branch_postal_code == SKIP
      @branch_phone_number = branch_phone_number unless branch_phone_number == SKIP
      @branch_region = branch_region unless branch_region == SKIP
      @beneficary_tax_id = beneficary_tax_id unless beneficary_tax_id == SKIP
      @beneficary_tax_id_type = beneficary_tax_id_type unless beneficary_tax_id_type == SKIP
      @beneficary_name = beneficary_name unless beneficary_name == SKIP
      @memo = memo unless memo == SKIP
      @note = note unless note == SKIP
      @correlation_token = correlation_token unless correlation_token == SKIP
      @card_expiry_date = card_expiry_date unless card_expiry_date == SKIP
      @card_holder_name = card_holder_name unless card_holder_name == SKIP
      @card_number = card_number unless card_number == SKIP
      unless electronic_wallet_account_number == SKIP
        @electronic_wallet_account_number =
          electronic_wallet_account_number
      end
      unless electronic_wallet_account_number_type == SKIP
        @electronic_wallet_account_number_type =
          electronic_wallet_account_number_type
      end
      unless electronic_wallet_government_id == SKIP
        @electronic_wallet_government_id =
          electronic_wallet_government_id
      end
      unless electronic_wallet_government_id_type == SKIP
        @electronic_wallet_government_id_type =
          electronic_wallet_government_id_type
      end
      @electronic_wallet_type = electronic_wallet_type unless electronic_wallet_type == SKIP
      @mobile_phone_number = mobile_phone_number unless mobile_phone_number == SKIP
      unless electronic_funds_transfer_type == SKIP
        @electronic_funds_transfer_type =
          electronic_funds_transfer_type
      end
      unless electronic_funds_transfer_failure_type == SKIP
        @electronic_funds_transfer_failure_type =
          electronic_funds_transfer_failure_type
      end
      unless electronic_transfer_status_type == SKIP
        @electronic_transfer_status_type =
          electronic_transfer_status_type
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_account_id =
        hash.key?('bankAccountId') ? hash['bankAccountId'] : SKIP
      bank_account_id_type =
        hash.key?('bankAccountIdType') ? hash['bankAccountIdType'] : SKIP
      bank_name = hash.key?('bankName') ? hash['bankName'] : SKIP
      bank_id = hash.key?('bankId') ? hash['bankId'] : SKIP
      bank_id_type = hash.key?('bankIdType') ? hash['bankIdType'] : SKIP
      branch_address = hash.key?('branchAddress') ? hash['branchAddress'] : SKIP
      branch_city = hash.key?('branchCity') ? hash['branchCity'] : SKIP
      branch_id = hash.key?('branchId') ? hash['branchId'] : SKIP
      branch_name = hash.key?('branchName') ? hash['branchName'] : SKIP
      branch_postal_code =
        hash.key?('branchPostalCode') ? hash['branchPostalCode'] : SKIP
      branch_phone_number =
        hash.key?('branchPhoneNumber') ? hash['branchPhoneNumber'] : SKIP
      branch_region = hash.key?('branchRegion') ? hash['branchRegion'] : SKIP
      beneficary_tax_id =
        hash.key?('beneficaryTaxId') ? hash['beneficaryTaxId'] : SKIP
      beneficary_tax_id_type =
        hash.key?('beneficaryTaxIdType') ? hash['beneficaryTaxIdType'] : SKIP
      beneficary_name =
        hash.key?('beneficaryName') ? hash['beneficaryName'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      note = hash.key?('note') ? hash['note'] : SKIP
      correlation_token =
        hash.key?('correlationToken') ? hash['correlationToken'] : SKIP
      card_expiry_date =
        hash.key?('cardExpiryDate') ? hash['cardExpiryDate'] : SKIP
      card_holder_name =
        hash.key?('cardHolderName') ? hash['cardHolderName'] : SKIP
      card_number = hash.key?('cardNumber') ? hash['cardNumber'] : SKIP
      electronic_wallet_account_number =
        hash.key?('electronicWalletAccountNumber') ? hash['electronicWalletAccountNumber'] : SKIP
      electronic_wallet_account_number_type =
        hash.key?('electronicWalletAccountNumberType') ? hash['electronicWalletAccountNumberType'] : SKIP
      electronic_wallet_government_id =
        hash.key?('electronicWalletGovernmentId') ? hash['electronicWalletGovernmentId'] : SKIP
      electronic_wallet_government_id_type =
        hash.key?('electronicWalletGovernmentIdType') ? hash['electronicWalletGovernmentIdType'] : SKIP
      electronic_wallet_type =
        hash.key?('electronicWalletType') ? hash['electronicWalletType'] : SKIP
      mobile_phone_number =
        hash.key?('mobilePhoneNumber') ? hash['mobilePhoneNumber'] : SKIP
      electronic_funds_transfer_type =
        hash.key?('electronicFundsTransferType') ? hash['electronicFundsTransferType'] : SKIP
      electronic_funds_transfer_failure_type =
        hash.key?('electronicFundsTransferFailureType') ? hash['electronicFundsTransferFailureType'] : SKIP
      electronic_transfer_status_type =
        hash.key?('electronicTransferStatusType') ? hash['electronicTransferStatusType'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReceiptDetails.new(bank_account_id,
                         bank_account_id_type,
                         bank_name,
                         bank_id,
                         bank_id_type,
                         branch_address,
                         branch_city,
                         branch_id,
                         branch_name,
                         branch_postal_code,
                         branch_phone_number,
                         branch_region,
                         beneficary_tax_id,
                         beneficary_tax_id_type,
                         beneficary_name,
                         memo,
                         note,
                         correlation_token,
                         card_expiry_date,
                         card_holder_name,
                         card_number,
                         electronic_wallet_account_number,
                         electronic_wallet_account_number_type,
                         electronic_wallet_government_id,
                         electronic_wallet_government_id_type,
                         electronic_wallet_type,
                         mobile_phone_number,
                         electronic_funds_transfer_type,
                         electronic_funds_transfer_failure_type,
                         electronic_transfer_status_type,
                         additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_account_id: #{@bank_account_id}, bank_account_id_type:"\
      " #{@bank_account_id_type}, bank_name: #{@bank_name}, bank_id: #{@bank_id}, bank_id_type:"\
      " #{@bank_id_type}, branch_address: #{@branch_address}, branch_city: #{@branch_city},"\
      " branch_id: #{@branch_id}, branch_name: #{@branch_name}, branch_postal_code:"\
      " #{@branch_postal_code}, branch_phone_number: #{@branch_phone_number}, branch_region:"\
      " #{@branch_region}, beneficary_tax_id: #{@beneficary_tax_id}, beneficary_tax_id_type:"\
      " #{@beneficary_tax_id_type}, beneficary_name: #{@beneficary_name}, memo: #{@memo}, note:"\
      " #{@note}, correlation_token: #{@correlation_token}, card_expiry_date:"\
      " #{@card_expiry_date}, card_holder_name: #{@card_holder_name}, card_number:"\
      " #{@card_number}, electronic_wallet_account_number: #{@electronic_wallet_account_number},"\
      " electronic_wallet_account_number_type: #{@electronic_wallet_account_number_type},"\
      " electronic_wallet_government_id: #{@electronic_wallet_government_id},"\
      " electronic_wallet_government_id_type: #{@electronic_wallet_government_id_type},"\
      " electronic_wallet_type: #{@electronic_wallet_type}, mobile_phone_number:"\
      " #{@mobile_phone_number}, electronic_funds_transfer_type:"\
      " #{@electronic_funds_transfer_type}, electronic_funds_transfer_failure_type:"\
      " #{@electronic_funds_transfer_failure_type}, electronic_transfer_status_type:"\
      " #{@electronic_transfer_status_type}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_account_id: #{@bank_account_id.inspect}, bank_account_id_type:"\
      " #{@bank_account_id_type.inspect}, bank_name: #{@bank_name.inspect}, bank_id:"\
      " #{@bank_id.inspect}, bank_id_type: #{@bank_id_type.inspect}, branch_address:"\
      " #{@branch_address.inspect}, branch_city: #{@branch_city.inspect}, branch_id:"\
      " #{@branch_id.inspect}, branch_name: #{@branch_name.inspect}, branch_postal_code:"\
      " #{@branch_postal_code.inspect}, branch_phone_number: #{@branch_phone_number.inspect},"\
      " branch_region: #{@branch_region.inspect}, beneficary_tax_id:"\
      " #{@beneficary_tax_id.inspect}, beneficary_tax_id_type: #{@beneficary_tax_id_type.inspect},"\
      " beneficary_name: #{@beneficary_name.inspect}, memo: #{@memo.inspect}, note:"\
      " #{@note.inspect}, correlation_token: #{@correlation_token.inspect}, card_expiry_date:"\
      " #{@card_expiry_date.inspect}, card_holder_name: #{@card_holder_name.inspect}, card_number:"\
      " #{@card_number.inspect}, electronic_wallet_account_number:"\
      " #{@electronic_wallet_account_number.inspect}, electronic_wallet_account_number_type:"\
      " #{@electronic_wallet_account_number_type.inspect}, electronic_wallet_government_id:"\
      " #{@electronic_wallet_government_id.inspect}, electronic_wallet_government_id_type:"\
      " #{@electronic_wallet_government_id_type.inspect}, electronic_wallet_type:"\
      " #{@electronic_wallet_type.inspect}, mobile_phone_number: #{@mobile_phone_number.inspect},"\
      " electronic_funds_transfer_type: #{@electronic_funds_transfer_type.inspect},"\
      ' electronic_funds_transfer_failure_type:'\
      " #{@electronic_funds_transfer_failure_type.inspect}, electronic_transfer_status_type:"\
      " #{@electronic_transfer_status_type.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
