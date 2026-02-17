# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The processor type for the prepaid card
  class CardProcessors
    CARD_PROCESSORS = [
      # TODO: Write general description for FIS
      FIS = 'FIS'.freeze,

      # TODO: Write general description for FLEX
      FLEX = 'FLEX'.freeze,

      # TODO: Write general description for EPS
      EPS = 'EPS'.freeze,

      # TODO: Write general description for TOKA
      TOKA = 'TOKA'.freeze,

      # TODO: Write general description for QOLO
      QOLO = 'QOLO'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CARD_PROCESSORS.include?(value)
    end

    def self.from_value(value, default_value = FIS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'fis' then FIS
      when 'flex' then FLEX
      when 'eps' then EPS
      when 'toka' then TOKA
      when 'qolo' then QOLO
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
