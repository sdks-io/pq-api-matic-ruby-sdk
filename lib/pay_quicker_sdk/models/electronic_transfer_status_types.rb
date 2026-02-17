# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The status of a bank transfer
  class ElectronicTransferStatusTypes
    ELECTRONIC_TRANSFER_STATUS_TYPES = [
      # The bank transfer has been started to the destination bank.
      IN_PROGRESS = 'IN_PROGRESS'.freeze,

      # The bank transfer has been performed and the funds have arrived in the
      # destination bank.
      PROCESSED = 'PROCESSED'.freeze,

      # The bank transfer has failed and the funds have been sent back to the
      # source account.
      FAILED = 'REFUNDED'.freeze,

      # The bank transfer has failed.
      REFUNDED = 'FAILED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ELECTRONIC_TRANSFER_STATUS_TYPES.include?(value)
    end

    def self.from_value(value, default_value = IN_PROGRESS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'in_progress' then IN_PROGRESS
      when 'processed' then PROCESSED
      when 'failed' then FAILED
      when 'refunded' then REFUNDED
      else
        default_value
      end
    end
  end
end
