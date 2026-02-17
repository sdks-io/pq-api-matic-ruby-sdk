# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Name of the bank
  class BankTypes
    BANK_TYPES = [
      # TODO: Write general description for MCB
      MCB = 'MCB'.freeze,

      # TODO: Write general description for PEOPLES
      PEOPLES = 'PEOPLES'.freeze,

      # TODO: Write general description for PPS
      PPS = 'PPS'.freeze,

      # TODO: Write general description for TOKA
      TOKA = 'TOKA'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for CHOICELTD
      CHOICELTD = 'CHOICELTD'.freeze,

      # TODO: Write general description for FLEX
      FLEX = 'FLEX'.freeze,

      # TODO: Write general description for REWARDS
      REWARDS = 'REWARDS'.freeze,

      # TODO: Write general description for PATHWARD
      PATHWARD = 'PATHWARD'.freeze,

      # TODO: Write general description for SUTTON
      SUTTON = 'SUTTON'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_TYPES.include?(value)
    end

    def self.from_value(value, default_value = MCB)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'mcb' then MCB
      when 'peoples' then PEOPLES
      when 'pps' then PPS
      when 'toka' then TOKA
      when 'undefined' then UNDEFINED
      when 'choiceltd' then CHOICELTD
      when 'flex' then FLEX
      when 'rewards' then REWARDS
      when 'pathward' then PATHWARD
      when 'sutton' then SUTTON
      else
        default_value
      end
    end
  end
end
