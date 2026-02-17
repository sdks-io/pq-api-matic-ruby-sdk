# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The [Language](#/rest/models/structures/language) type in IETF's BCP 47
  # format
  class Languages
    LANGUAGES = [
      # Czech
      CSCZ = 'cs-CZ'.freeze,

      # German
      DEDE = 'de-DE'.freeze,

      # English (UK)
      ENGB = 'en-GB'.freeze,

      # English (US)
      ENUS = 'en-US'.freeze,

      # Spanish (Spain)
      ESES = 'es-ES'.freeze,

      # Spanish (Mexico)
      ESMX = 'es-MX'.freeze,

      # French (Canadian)
      FRCA = 'fr-CA'.freeze,

      # French (France)
      FRFR = 'fr-FR'.freeze,

      # Italian
      ITIT = 'it-IT'.freeze,

      # I bet you already know
      JAJP = 'ja-JP'.freeze,

      # Korea
      KOKR = 'ko-KR'.freeze,

      # Dutch
      NLNL = 'nl-NL'.freeze,

      # Polish
      PLPL = 'pl-PL'.freeze,

      # Portuguese (Brazil)
      PTBR = 'pt-BR'.freeze,

      # Portuguese (Portugal)
      PTPT = 'pt-PT'.freeze,

      # Russian
      RURU = 'ru-RU'.freeze,

      # Chinese (Simplified)
      ZHHANS = 'zh-Hans'.freeze,

      # Chinese (Traditional)
      ZHHANT = 'zh-Hant'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LANGUAGES.include?(value)
    end

    def self.from_value(value, default_value = CSCZ)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'cscz' then CSCZ
      when 'dede' then DEDE
      when 'engb' then ENGB
      when 'enus' then ENUS
      when 'eses' then ESES
      when 'esmx' then ESMX
      when 'frca' then FRCA
      when 'frfr' then FRFR
      when 'itit' then ITIT
      when 'jajp' then JAJP
      when 'kokr' then KOKR
      when 'nlnl' then NLNL
      when 'plpl' then PLPL
      when 'ptbr' then PTBR
      when 'ptpt' then PTPT
      when 'ruru' then RURU
      when 'zhhans' then ZHHANS
      when 'zhhant' then ZHHANT
      else
        default_value
      end
    end
  end
end
