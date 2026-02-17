# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Gender](#/rest/models/structures/gender) as a user identifies
  class Genders
    GENDERS = [
      # TODO: Write general description for FEMALE
      FEMALE = 'FEMALE'.freeze,

      # TODO: Write general description for MALE
      MALE = 'MALE'.freeze,

      # TODO: Write general description for NOT_SPECIFIED
      NOT_SPECIFIED = 'NOT_SPECIFIED'.freeze,

      # TODO: Write general description for UNDEFINED
      UNDEFINED = 'UNDEFINED'.freeze,

      # TODO: Write general description for GENDER_NEUTRAL
      GENDER_NEUTRAL = 'GENDER_NEUTRAL'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GENDERS.include?(value)
    end

    def self.from_value(value, default_value = FEMALE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'female' then FEMALE
      when 'male' then MALE
      when 'not_specified' then NOT_SPECIFIED
      when 'undefined' then UNDEFINED
      when 'gender_neutral' then GENDER_NEUTRAL
      else
        default_value
      end
    end
  end
end
