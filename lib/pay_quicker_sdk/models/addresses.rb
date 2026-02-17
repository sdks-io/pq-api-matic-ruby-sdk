# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Classifies the [address](#/rest/models/structures/address) type
  # (*Residential*, *Business*, *Billing*, *Shipping*)
  class Addresses
    ADDRESSES = [
      # Business Address
      BUSINESS = 'BUSINESS'.freeze,

      # Mailing Address
      MAILING = 'MAILING'.freeze,

      # Residential Address
      RESIDENTAL = 'RESIDENTIAL'.freeze,

      # Unknown or undefined address type
      UNDEFINED = 'UNDEFINED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ADDRESSES.include?(value)
    end

    def self.from_value(value, default_value = BUSINESS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'business' then BUSINESS
      when 'mailing' then MAILING
      when 'residental' then RESIDENTAL
      when 'undefined' then UNDEFINED
      else
        default_value
      end
    end
  end
end
