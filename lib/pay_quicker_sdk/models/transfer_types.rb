# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Transfer type](#/rest/models/structures/transfer-type)
  class TransferTypes
    TRANSFER_TYPES = [
      # TODO: Write general description for ACCOUNT_TO_ACCOUNT_TRANSFER
      ACCOUNT_TO_ACCOUNT_TRANSFER = 'ACCOUNT_TO_ACCOUNT_TRANSFER'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'BANK_TRANSFER'.freeze,

      # TODO: Write general description for BANK_TRANSFER_RETURN
      BANK_TRANSFER_RETURN = 'BANK_TRANSFER_RETURN'.freeze,

      # TODO: Write general description for BANK_TRANSFER_REVERSAL
      BANK_TRANSFER_REVERSAL = 'BANK_TRANSFER_REVERSAL'.freeze,

      # TODO: Write general description for CANCELLED_PAYMENT
      CANCELLED_PAYMENT = 'CANCELLED_PAYMENT'.freeze,

      # TODO: Write general description for CARD_PURCHASE
      CARD_PURCHASE = 'CARD_PURCHASE'.freeze,

      # TODO: Write general description for CARD_PURCHASE_REFUND
      CARD_PURCHASE_REFUND = 'CARD_PURCHASE_REFUND'.freeze,

      # TODO: Write general description for CASH_WITHDRAWAL
      CASH_WITHDRAWAL = 'CASH_WITHDRAWAL'.freeze,

      # TODO: Write general description for DEPOSIT
      DEPOSIT = 'DEPOSIT'.freeze,

      # TODO: Write general description for ESCHEATED_FUNDS_RETURN
      ESCHEATED_FUNDS_RETURN = 'ESCHEATED_FUNDS_RETURN'.freeze,

      # TODO: Write general description for FEE
      FEE = 'FEE'.freeze,

      # TODO: Write general description for FEE_REFUND
      FEE_REFUND = 'FEE_REFUND'.freeze,

      # TODO: Write general description for PAPER_CHECK
      PAPER_CHECK = 'PAPER_CHECK'.freeze,

      # TODO: Write general description for PAYMENT
      PAYMENT = 'PAYMENT'.freeze,

      # TODO: Write general description for PAYMENT_RETRACTION
      PAYMENT_RETRACTION = 'PAYMENT_RETRACTION'.freeze,

      # TODO: Write general description for PREPAID_CARD_LOAD
      PREPAID_CARD_LOAD = 'PREPAID_CARD_LOAD'.freeze,

      # TODO: Write general description for PREPAID_CARD_UNLOAD
      PREPAID_CARD_UNLOAD = 'PREPAID_CARD_UNLOAD'.freeze,

      # TODO: Write general description for PROVISIONAL_REFUND
      PROVISIONAL_REFUND = 'PROVISIONAL_REFUND'.freeze,

      # TODO: Write general description for SPENDBACK
      SPENDBACK = 'SPENDBACK'.freeze,

      # TODO: Write general description for SPENDBACK_RETURN
      SPENDBACK_RETURN = 'SPENDBACK_RETURN'.freeze,

      # TODO: Write general description for ELECTRONIC_WALLET_TRANSFER
      ELECTRONIC_WALLET_TRANSFER = 'ELECTRONIC_WALLET_TRANSFER'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSFER_TYPES.include?(value)
    end

    def self.from_value(value, default_value = ACCOUNT_TO_ACCOUNT_TRANSFER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'account_to_account_transfer' then ACCOUNT_TO_ACCOUNT_TRANSFER
      when 'bank_transfer' then BANK_TRANSFER
      when 'bank_transfer_return' then BANK_TRANSFER_RETURN
      when 'bank_transfer_reversal' then BANK_TRANSFER_REVERSAL
      when 'cancelled_payment' then CANCELLED_PAYMENT
      when 'card_purchase' then CARD_PURCHASE
      when 'card_purchase_refund' then CARD_PURCHASE_REFUND
      when 'cash_withdrawal' then CASH_WITHDRAWAL
      when 'deposit' then DEPOSIT
      when 'escheated_funds_return' then ESCHEATED_FUNDS_RETURN
      when 'fee' then FEE
      when 'fee_refund' then FEE_REFUND
      when 'paper_check' then PAPER_CHECK
      when 'payment' then PAYMENT
      when 'payment_retraction' then PAYMENT_RETRACTION
      when 'prepaid_card_load' then PREPAID_CARD_LOAD
      when 'prepaid_card_unload' then PREPAID_CARD_UNLOAD
      when 'provisional_refund' then PROVISIONAL_REFUND
      when 'spendback' then SPENDBACK
      when 'spendback_return' then SPENDBACK_RETURN
      when 'electronic_wallet_transfer' then ELECTRONIC_WALLET_TRANSFER
      else
        default_value
      end
    end
  end
end
