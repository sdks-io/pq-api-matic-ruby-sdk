# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Major [credit card network](#/rest/models/structures/card-network) types
  class CardNetworks
    CARD_NETWORKS = [
      # TODO: Write general description for MASTER_CARD
      MASTER_CARD = 'MASTER_CARD'.freeze,

      # TODO: Write general description for VISA
      VISA = 'VISA'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CARD_NETWORKS.include?(value)
    end

    def self.from_value(value, default_value = MASTER_CARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'master_card' then MASTER_CARD
      when 'visa' then VISA
      else
        default_value
      end
    end
  end
end
