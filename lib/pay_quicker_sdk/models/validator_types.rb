# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Validator
  # types](#/rest/models/structures/bank-account-requirement-validator) for the
  # required bank account information.
  class ValidatorTypes
    VALIDATOR_TYPES = [
      # TODO: Write general description for LENGTH
      LENGTH = 'LENGTH'.freeze,

      # TODO: Write general description for REGEX
      REGEX = 'REGEX'.freeze,

      # TODO: Write general description for RANGE
      RANGE = 'RANGE'.freeze,

      # TODO: Write general description for REQUIRED
      REQUIRED = 'REQUIRED'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      VALIDATOR_TYPES.include?(value)
    end

    def self.from_value(value, default_value = LENGTH)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'length' then LENGTH
      when 'regex' then REGEX
      when 'range' then RANGE
      when 'required' then REQUIRED
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
