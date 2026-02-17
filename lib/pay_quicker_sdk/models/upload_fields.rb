# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # __UploadFields.
  class UploadFields
    UPLOAD_FIELDS = [
      # TODO: Write general description for EXPIRATION_DATE
      EXPIRATION_DATE = 'EXPIRATION_DATE'.freeze,

      # TODO: Write general description for STATUS
      STATUS = 'STATUS'.freeze,

      # TODO: Write general description for TYPE
      TYPE = 'TYPE'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      UPLOAD_FIELDS.include?(value)
    end

    def self.from_value(value, default_value = EXPIRATION_DATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'expiration_date' then EXPIRATION_DATE
      when 'status' then STATUS
      when 'type' then TYPE
      else
        default_value
      end
    end
  end
end
