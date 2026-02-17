# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Fee types
  class Fees
    FEES = [
      # TODO: Write general description for BANK_TRANSFER_REVERSAL_STOP_NOC
      BANK_TRANSFER_REVERSAL_STOP_NOC = 'BANK_TRANSFER_REVERSAL_STOP_NOC'.freeze,

      # TODO: Write general description for PAPER_CHECK_STOP
      PAPER_CHECK_STOP = 'PAPER_CHECK_STOP'.freeze,

      # TODO: Write general description for INSTANT_PAYMENT
      INSTANT_PAYMENT = 'INSTANT_PAYMENT'.freeze,

      # TODO: Write general description for ACCOUNT_DIRECT_DEPOSIT
      ACCOUNT_DIRECT_DEPOSIT = 'ACCOUNT_DIRECT_DEPOSIT'.freeze,

      # TODO: Write general description for INBOUND_WIRE
      INBOUND_WIRE = 'INBOUND_WIRE'.freeze,

      # TODO: Write general description for PLASTIC_CARD_PURCHASE_DECLINED
      PLASTIC_CARD_PURCHASE_DECLINED = 'PLASTIC_CARD_PURCHASE_DECLINED'.freeze,

      # TODO: Write general description for ATM_DECLINED
      ATM_DECLINED = 'ATM_DECLINED'.freeze,

      # TODO: Write general description for CLEAR_NEGATIVE_BALANCE
      CLEAR_NEGATIVE_BALANCE = 'CLEAR_NEGATIVE_BALANCE'.freeze,

      # TODO: Write general description for PLASTIC_CARD_ISSUANCE
      PLASTIC_CARD_ISSUANCE = 'PLASTIC_CARD_ISSUANCE'.freeze,

      # TODO: Write general description for PLASTIC_CARD_REPLACEMENT_FRAUD
      PLASTIC_CARD_REPLACEMENT_FRAUD = 'PLASTIC_CARD_REPLACEMENT_FRAUD'.freeze,

      # TODO: Write general description for
      # PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN
      PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN = 'PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN'.freeze,

      # TODO: Write general description for PLASTIC_CARD_REPLACEMENT_EXPIRED
      PLASTIC_CARD_REPLACEMENT_EXPIRED = 'PLASTIC_CARD_REPLACEMENT_EXPIRED'.freeze,

      # TODO: Write general description for BANK_TRANSFER_CURRENCY_CONVERSION
      BANK_TRANSFER_CURRENCY_CONVERSION = 'BANK_TRANSFER_CURRENCY_CONVERSION'.freeze,

      # TODO: Write general description for
      # PAPER_CHECK_ISSUANCE_CURRENCY_CONVERSION
      PAPER_CHECK_ISSUANCE_CURRENCY_CONVERSION = 'PAPER_CHECK_ISSUANCE_CURRENCY_CONVERSION'.freeze,

      # TODO: Write general description for PLASTIC_CARD_PIN_PURCHASE
      PLASTIC_CARD_PIN_PURCHASE = 'PLASTIC_CARD_PIN_PURCHASE'.freeze,

      # TODO: Write general description for FOREIGN_EXCHANGE_CONVERSION
      FOREIGN_EXCHANGE_CONVERSION = 'FOREIGN_EXCHANGE_CONVERSION'.freeze,

      # TODO: Write general description for
      # ATM_CASH_WITHDRAWAL_REMOTE_CURRENCY_FOREIGN_EXCHANGE
      ATM_CASH_WITHDRAWAL_REMOTE_CURRENCY_FOREIGN_EXCHANGE = 'ATM_CASH_WITHDRAWAL_REMOTE_CURRENCY_FOREIGN_EXCHANGE'.freeze,

      # TODO: Write general description for PAPER_STATEMENT
      PAPER_STATEMENT = 'PAPER_STATEMENT'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'BANK_TRANSFER'.freeze,

      # TODO: Write general description for PAPER_CHECK_ISSUANCE
      PAPER_CHECK_ISSUANCE = 'PAPER_CHECK_ISSUANCE'.freeze,

      # TODO: Write general description for ACCOUNT_ENROLLMENT
      ACCOUNT_ENROLLMENT = 'ACCOUNT_ENROLLMENT'.freeze,

      # TODO: Write general description for MONTHLY_MAINTENANCE_INACTIVE_ACCOUNT
      MONTHLY_MAINTENANCE_INACTIVE_ACCOUNT = 'MONTHLY_MAINTENANCE_INACTIVE_ACCOUNT'.freeze,

      # TODO: Write general description for MONTHLY_MAINTENANCE_ACTIVE_ACCOUNT
      MONTHLY_MAINTENANCE_ACTIVE_ACCOUNT = 'MONTHLY_MAINTENANCE_ACTIVE_ACCOUNT'.freeze,

      # TODO: Write general description for ACCOUNT_CLOSURE
      ACCOUNT_CLOSURE = 'ACCOUNT_CLOSURE'.freeze,

      # TODO: Write general description for PLASTIC_CARD_PURCHASE_OUTSIDE_USA
      PLASTIC_CARD_PURCHASE_OUTSIDE_USA = 'PLASTIC_CARD_PURCHASE_OUTSIDE_USA'.freeze,

      # TODO: Write general description for EXTERNAL_INITIATED_BANK_TRANSFER
      EXTERNAL_INITIATED_BANK_TRANSFER = 'EXTERNAL_INITIATED_BANK_TRANSFER'.freeze,

      # TODO: Write general description for
      # CO_BRANDED_ACCOUNT_PROCESSING_ORDER_FEE
      CO_BRANDED_ACCOUNT_PROCESSING_ORDER_FEE = 'CO_BRANDED_ACCOUNT_PROCESSING_ORDER_FEE'.freeze,

      # TODO: Write general description for
      # ATM_CASH_WITHDRAWAL_FEE_LOCAL_CURRENCY
      ATM_CASH_WITHDRAWAL_FEE_LOCAL_CURRENCY = 'ATM_CASH_WITHDRAWAL_FEE_LOCAL_CURRENCY'.freeze,

      # TODO: Write general description for
      # ATM_CASH_WITHDRAWAL_FEE_OUTSIDE_CURRENCY
      ATM_CASH_WITHDRAWAL_FEE_OUTSIDE_CURRENCY = 'ATM_CASH_WITHDRAWAL_FEE_OUTSIDE_CURRENCY'.freeze,

      # TODO: Write general description for ATM_BALANCE_INQUIRY_FEE
      ATM_BALANCE_INQUIRY_FEE = 'ATM_BALANCE_INQUIRY_FEE'.freeze,

      # TODO: Write general description for BANK_TELLER_CASH_WITHDRAWAL_FEE
      BANK_TELLER_CASH_WITHDRAWAL_FEE = 'BANK_TELLER_CASH_WITHDRAWAL_FEE'.freeze,

      # TODO: Write general description for
      # BANK_TELLER_CASH_WITHDRAWAL_DECLINE_FEE
      BANK_TELLER_CASH_WITHDRAWAL_DECLINE_FEE = 'BANK_TELLER_CASH_WITHDRAWAL_DECLINE_FEE'.freeze,

      # TODO: Write general description for COMPANY_BULK_MONTHLY_FEE
      COMPANY_BULK_MONTHLY_FEE = 'COMPANY_BULK_MONTHLY_FEE'.freeze,

      # TODO: Write general description for PAYMENT_ESCHEATMENT_FEE
      PAYMENT_ESCHEATMENT_FEE = 'PAYMENT_ESCHEATMENT_FEE'.freeze,

      # TODO: Write general description for SPENDBACK_PROCESSING_FEE
      SPENDBACK_PROCESSING_FEE = 'SPENDBACK_PROCESSING_FEE'.freeze,

      # TODO: Write general description for
      # VIRTUAL_PLASTIC_CARD_REPLACEMENT_FRAUD
      VIRTUAL_PLASTIC_CARD_REPLACEMENT_FRAUD = 'VIRTUAL_PLASTIC_CARD_REPLACEMENT_FRAUD'.freeze,

      # TODO: Write general description for
      # VIRTUAL_PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN
      VIRTUAL_PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN = 'VIRTUAL_PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN'.freeze,

      # TODO: Write general description for
      # VIRTUAL_PLASTIC_CARD_REPLACEMENT_EXPIRED
      VIRTUAL_PLASTIC_CARD_REPLACEMENT_EXPIRED = 'VIRTUAL_PLASTIC_CARD_REPLACEMENT_EXPIRED'.freeze,

      # TODO: Write general description for REVERSE_FEE
      REVERSE_FEE = 'REVERSE_FEE'.freeze,

      # TODO: Write general description for LOAD_SERVICE_FEE
      LOAD_SERVICE_FEE = 'LOAD_SERVICE_FEE'.freeze,

      # TODO: Write general description for PAYMENT_SUBSCRIPTION_FEE
      PAYMENT_SUBSCRIPTION_FEE = 'PAYMENT_SUBSCRIPTION_FEE'.freeze,

      # TODO: Write general description for AUTO_ACH_FEE
      AUTO_ACH_FEE = 'AUTO_ACH_FEE'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for BULK_MONTHLY_FEE
      BULK_MONTHLY_FEE = 'BULK_MONTHLY_FEE'.freeze,

      # TODO: Write general description for VIRTUAL_PLASTIC_CARD_ISSUANCE
      VIRTUAL_PLASTIC_CARD_ISSUANCE = 'VIRTUAL_PLASTIC_CARD_ISSUANCE'.freeze,

      # TODO: Write general description for ELECTRONIC_WALLET_TRANSFER
      ELECTRONIC_WALLET_TRANSFER = 'ELECTRONIC_WALLET_TRANSFER'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEES.include?(value)
    end

    def self.from_value(value, default_value = BANK_TRANSFER_REVERSAL_STOP_NOC)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'bank_transfer_reversal_stop_noc' then BANK_TRANSFER_REVERSAL_STOP_NOC
      when 'paper_check_stop' then PAPER_CHECK_STOP
      when 'instant_payment' then INSTANT_PAYMENT
      when 'account_direct_deposit' then ACCOUNT_DIRECT_DEPOSIT
      when 'inbound_wire' then INBOUND_WIRE
      when 'plastic_card_purchase_declined' then PLASTIC_CARD_PURCHASE_DECLINED
      when 'atm_declined' then ATM_DECLINED
      when 'clear_negative_balance' then CLEAR_NEGATIVE_BALANCE
      when 'plastic_card_issuance' then PLASTIC_CARD_ISSUANCE
      when 'plastic_card_replacement_fraud' then PLASTIC_CARD_REPLACEMENT_FRAUD
      when 'plastic_card_replacement_lost_or_stolen' then PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN
      when 'plastic_card_replacement_expired' then PLASTIC_CARD_REPLACEMENT_EXPIRED
      when 'bank_transfer_currency_conversion' then BANK_TRANSFER_CURRENCY_CONVERSION
      when 'paper_check_issuance_currency_conversion' then PAPER_CHECK_ISSUANCE_CURRENCY_CONVERSION
      when 'plastic_card_pin_purchase' then PLASTIC_CARD_PIN_PURCHASE
      when 'foreign_exchange_conversion' then FOREIGN_EXCHANGE_CONVERSION
      when 'atm_cash_withdrawal_remote_currency_foreign_exchange' then ATM_CASH_WITHDRAWAL_REMOTE_CURRENCY_FOREIGN_EXCHANGE
      when 'paper_statement' then PAPER_STATEMENT
      when 'bank_transfer' then BANK_TRANSFER
      when 'paper_check_issuance' then PAPER_CHECK_ISSUANCE
      when 'account_enrollment' then ACCOUNT_ENROLLMENT
      when 'monthly_maintenance_inactive_account' then MONTHLY_MAINTENANCE_INACTIVE_ACCOUNT
      when 'monthly_maintenance_active_account' then MONTHLY_MAINTENANCE_ACTIVE_ACCOUNT
      when 'account_closure' then ACCOUNT_CLOSURE
      when 'plastic_card_purchase_outside_usa' then PLASTIC_CARD_PURCHASE_OUTSIDE_USA
      when 'external_initiated_bank_transfer' then EXTERNAL_INITIATED_BANK_TRANSFER
      when 'co_branded_account_processing_order_fee' then CO_BRANDED_ACCOUNT_PROCESSING_ORDER_FEE
      when 'atm_cash_withdrawal_fee_local_currency' then ATM_CASH_WITHDRAWAL_FEE_LOCAL_CURRENCY
      when 'atm_cash_withdrawal_fee_outside_currency' then ATM_CASH_WITHDRAWAL_FEE_OUTSIDE_CURRENCY
      when 'atm_balance_inquiry_fee' then ATM_BALANCE_INQUIRY_FEE
      when 'bank_teller_cash_withdrawal_fee' then BANK_TELLER_CASH_WITHDRAWAL_FEE
      when 'bank_teller_cash_withdrawal_decline_fee' then BANK_TELLER_CASH_WITHDRAWAL_DECLINE_FEE
      when 'company_bulk_monthly_fee' then COMPANY_BULK_MONTHLY_FEE
      when 'payment_escheatment_fee' then PAYMENT_ESCHEATMENT_FEE
      when 'spendback_processing_fee' then SPENDBACK_PROCESSING_FEE
      when 'virtual_plastic_card_replacement_fraud' then VIRTUAL_PLASTIC_CARD_REPLACEMENT_FRAUD
      when 'virtual_plastic_card_replacement_lost_or_stolen' then VIRTUAL_PLASTIC_CARD_REPLACEMENT_LOST_OR_STOLEN
      when 'virtual_plastic_card_replacement_expired' then VIRTUAL_PLASTIC_CARD_REPLACEMENT_EXPIRED
      when 'reverse_fee' then REVERSE_FEE
      when 'load_service_fee' then LOAD_SERVICE_FEE
      when 'payment_subscription_fee' then PAYMENT_SUBSCRIPTION_FEE
      when 'auto_ach_fee' then AUTO_ACH_FEE
      when 'undefined' then UNDEFINED
      when 'bulk_monthly_fee' then BULK_MONTHLY_FEE
      when 'virtual_plastic_card_issuance' then VIRTUAL_PLASTIC_CARD_ISSUANCE
      when 'electronic_wallet_transfer' then ELECTRONIC_WALLET_TRANSFER
      else
        default_value
      end
    end
  end
end
