# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Indicates the type of program associated with a prepaid card
  class ProgramTypes
    PROGRAM_TYPES = [
      # TODO: Write general description for COMMERCIAL
      COMMERCIAL = 'COMMERCIAL'.freeze,

      # TODO: Write general description for CONSUMER_DISBURSEMENT
      CONSUMER_DISBURSEMENT = 'CONSUMER_DISBURSEMENT'.freeze,

      # TODO: Write general description for CONSUMER_GPR
      CONSUMER_GPR = 'CONSUMER_GPR'.freeze,

      # TODO: Write general description for CONSUMER_LOYALTY
      CONSUMER_LOYALTY = 'CONSUMER_LOYALTY'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROGRAM_TYPES.include?(value)
    end

    def self.from_value(value, default_value = COMMERCIAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'commercial' then COMMERCIAL
      when 'consumer_disbursement' then CONSUMER_DISBURSEMENT
      when 'consumer_gpr' then CONSUMER_GPR
      when 'consumer_loyalty' then CONSUMER_LOYALTY
      else
        default_value
      end
    end
  end
end
