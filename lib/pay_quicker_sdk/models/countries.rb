# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Throughout the PayQuicker API, the usage of the 2-letter alpha code is used
  # in place of the country name, e.g., for bank country or residential country.
  # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
  # convenience.
  class Countries
    COUNTRIES = [
      # Andorra
      AD = 'AD'.freeze,

      # United Arab Emirates
      AE = 'AE'.freeze,

      # Afghanistan
      AF = 'AF'.freeze,

      # Antigua and Barbuda
      AG = 'AG'.freeze,

      # Anguilla
      AI = 'AI'.freeze,

      # Albania
      AL = 'AL'.freeze,

      # Armenia
      AM = 'AM'.freeze,

      # Netherlands Antilles
      AN = 'AN'.freeze,

      # Angola
      AO = 'AO'.freeze,

      # Antarctica
      AQ = 'AQ'.freeze,

      # Argentina
      AR = 'AR'.freeze,

      # American Samoa
      AS = 'AS'.freeze,

      # Austria
      AT = 'AT'.freeze,

      # Australia
      AU = 'AU'.freeze,

      # Aruba
      AW = 'AW'.freeze,

      # Aland Islands
      AX = 'AX'.freeze,

      # Azerbaijan
      AZ = 'AZ'.freeze,

      # Bosnia and Herzegovina
      BA = 'BA'.freeze,

      # Barbados
      BB = 'BB'.freeze,

      # Bangladesh
      BD = 'BD'.freeze,

      # Belgium
      BE = 'BE'.freeze,

      # Burkina Faso
      BF = 'BF'.freeze,

      # Bulgaria
      BG = 'BG'.freeze,

      # Bahrain
      BH = 'BH'.freeze,

      # Burundi
      BI = 'BI'.freeze,

      # Benin
      BJ = 'BJ'.freeze,

      # Saint Barthelemy
      BL = 'BL'.freeze,

      # Bermuda
      BM = 'BM'.freeze,

      # Brunei Darussalam
      BN = 'BN'.freeze,

      # Bolivia
      BO = 'BO'.freeze,

      # Bonaire, Saint Eustatius and Saba
      BQ = 'BQ'.freeze,

      # Brazil
      BR = 'BR'.freeze,

      # Bahamas
      BS = 'BS'.freeze,

      # Bhutan
      BT = 'BT'.freeze,

      # Bouvet Island
      BV = 'BV'.freeze,

      # Botswana
      BW = 'BW'.freeze,

      # Belarus
      BY = 'BY'.freeze,

      # Belize
      BZ = 'BZ'.freeze,

      # Canada
      CA = 'CA'.freeze,

      # Cocos Islands
      CC = 'CC'.freeze,

      # Congo, Democratic Republic of the
      CD = 'CD'.freeze,

      # Central African Republic
      CF = 'CF'.freeze,

      # Republic of the Congo
      CG = 'CG'.freeze,

      # Switzerland
      CH = 'CH'.freeze,

      # Ivory Coast
      CI = 'CI'.freeze,

      # Cook Islands
      CK = 'CK'.freeze,

      # Chile
      CL = 'CL'.freeze,

      # Cameroon
      CM = 'CM'.freeze,

      # China
      CN = 'CN'.freeze,

      # Colombia
      CO = 'CO'.freeze,

      # Costa Rica
      CR = 'CR'.freeze,

      # Cuba
      CU = 'CU'.freeze,

      # Cape Verde
      CV = 'CV'.freeze,

      # Curacao
      CW = 'CW'.freeze,

      # Christmas Island
      CX = 'CX'.freeze,

      # Cyprus
      CY = 'CY'.freeze,

      # Czech Republic
      CZ = 'CZ'.freeze,

      # Germany
      DE = 'DE'.freeze,

      # Djibouti
      DJ = 'DJ'.freeze,

      # Denmark
      DK = 'DK'.freeze,

      # Dominica
      DM = 'DM'.freeze,

      # Dominican Republic
      DO = 'DO'.freeze,

      # Algeria
      DZ = 'DZ'.freeze,

      # Ecuador
      EC = 'EC'.freeze,

      # Estonia
      EE = 'EE'.freeze,

      # Egypt
      EG = 'EG'.freeze,

      # Western Sahara
      EH = 'EH'.freeze,

      # Eritrea
      ER = 'ER'.freeze,

      # Spain
      ES = 'ES'.freeze,

      # Ethiopia
      ET = 'ET'.freeze,

      # Finland
      FI = 'FI'.freeze,

      # Fiji
      FJ = 'FJ'.freeze,

      # Falkland Islands (Malvinas)
      FK = 'FK'.freeze,

      # Micronesia
      FM = 'FM'.freeze,

      # Faroe Islands
      FO = 'FO'.freeze,

      # France
      FR = 'FR'.freeze,

      # Gabon
      GA = 'GA'.freeze,

      # United Kingdom
      GB = 'GB'.freeze,

      # Grenada
      GD = 'GD'.freeze,

      # Georgia
      GE = 'GE'.freeze,

      # French Guiana
      GF = 'GF'.freeze,

      # Guernsey
      GG = 'GG'.freeze,

      # Ghana
      GH = 'GH'.freeze,

      # Gibraltar
      GI = 'GI'.freeze,

      # Greenland
      GL = 'GL'.freeze,

      # Gambia
      GM = 'GM'.freeze,

      # Guinea
      GN = 'GN'.freeze,

      # Guadeloupe
      GP = 'GP'.freeze,

      # Equatorial Guinea
      GQ = 'GQ'.freeze,

      # Greece
      GR = 'GR'.freeze,

      # South Georgia and the South Sandwich Islands
      GS = 'GS'.freeze,

      # Guatemala
      GT = 'GT'.freeze,

      # Guam
      GU = 'GU'.freeze,

      # Guinea-Bissau
      GW = 'GW'.freeze,

      # Guyana
      GY = 'GY'.freeze,

      # Hong Kong
      HK = 'HK'.freeze,

      # Heard Island and Mcdonald Islands
      HM = 'HM'.freeze,

      # Honduras
      HN = 'HN'.freeze,

      # Croatia
      HR = 'HR'.freeze,

      # Haiti
      HT = 'HT'.freeze,

      # Hungary
      HU = 'HU'.freeze,

      # Indonesia
      ID = 'ID'.freeze,

      # Ireland
      IE = 'IE'.freeze,

      # Israel
      IL = 'IL'.freeze,

      # Isle of Man
      IM = 'IM'.freeze,

      # India
      IN = 'IN'.freeze,

      # British Indian Ocean Territory
      IO = 'IO'.freeze,

      # Iraq
      IQ = 'IQ'.freeze,

      # Iran
      IR = 'IR'.freeze,

      # Iceland
      IS = 'IS'.freeze,

      # Italy
      IT = 'IT'.freeze,

      # Jersey
      JE = 'JE'.freeze,

      # Jamaica
      JM = 'JM'.freeze,

      # Jordan
      JO = 'JO'.freeze,

      # Japan
      JP = 'JP'.freeze,

      # Kenya
      KE = 'KE'.freeze,

      # Kyrgyzstan
      KG = 'KG'.freeze,

      # Cambodia
      KH = 'KH'.freeze,

      # Kiribati
      KI = 'KI'.freeze,

      # Comoros
      KM = 'KM'.freeze,

      # Saint Kitts and Nevis
      KN = 'KN'.freeze,

      # North Korea
      KP = 'KP'.freeze,

      # South Korea
      KR = 'KR'.freeze,

      # Kuwait
      KW = 'KW'.freeze,

      # Cayman Islands
      KY = 'KY'.freeze,

      # Kazakhstan
      KZ = 'KZ'.freeze,

      # Lao PDR
      LA = 'LA'.freeze,

      # Lebanon
      LB = 'LB'.freeze,

      # Saint Lucia
      LC = 'LC'.freeze,

      # Liechtenstein
      LI = 'LI'.freeze,

      # Sri Lanka
      LK = 'LK'.freeze,

      # Liberia
      LR = 'LR'.freeze,

      # Lesotho
      LS = 'LS'.freeze,

      # Lithuania
      LT = 'LT'.freeze,

      # Luxembourg
      LU = 'LU'.freeze,

      # Latvia
      LV = 'LV'.freeze,

      # Libya
      LY = 'LY'.freeze,

      # Morocco
      MA = 'MA'.freeze,

      # Monaco
      MC = 'MC'.freeze,

      # Moldova
      MD = 'MD'.freeze,

      # Montenegro
      ME = 'ME'.freeze,

      # Saint Martin
      MF = 'MF'.freeze,

      # Madagascar
      MG = 'MG'.freeze,

      # Marshall Islands
      MH = 'MH'.freeze,

      # Macedonia
      MK = 'MK'.freeze,

      # Mali
      ML = 'ML'.freeze,

      # Myanmar
      MM = 'MM'.freeze,

      # Mongolia
      MN = 'MN'.freeze,

      # Macao
      MO = 'MO'.freeze,

      # Northern Mariana Islands
      MP = 'MP'.freeze,

      # Martinique
      MQ = 'MQ'.freeze,

      # Mauritania
      MR = 'MR'.freeze,

      # Montserrat
      MS = 'MS'.freeze,

      # Malta
      MT = 'MT'.freeze,

      # Mauritius
      MU = 'MU'.freeze,

      # Maldives
      MV = 'MV'.freeze,

      # Malawi
      MW = 'MW'.freeze,

      # Mexico
      MX = 'MX'.freeze,

      # Malaysia
      MY = 'MY'.freeze,

      # Mozambique
      MZ = 'MZ'.freeze,

      # Namibia
      NA = 'NA'.freeze,

      # New Caledonia
      NC = 'NC'.freeze,

      # Niger
      NE = 'NE'.freeze,

      # Norfolk Island
      NF = 'NF'.freeze,

      # Nigeria
      NG = 'NG'.freeze,

      # Nicaragua
      NI = 'NI'.freeze,

      # Netherlands
      NL = 'NL'.freeze,

      # Norway
      NO = 'NO'.freeze,

      # Nepal
      NP = 'NP'.freeze,

      # Nauru
      NR = 'NR'.freeze,

      # Niue
      NU = 'NU'.freeze,

      # New Zealand
      NZ = 'NZ'.freeze,

      # Oman
      OM = 'OM'.freeze,

      # Panama
      PA = 'PA'.freeze,

      # Peru
      PE = 'PE'.freeze,

      # French Polynesia
      PF = 'PF'.freeze,

      # Papua New Guinea
      PG = 'PG'.freeze,

      # Philippines
      PH = 'PH'.freeze,

      # Pakistan
      PK = 'PK'.freeze,

      # Poland
      PL = 'PL'.freeze,

      # Saint Pierre and Miquelon
      PM = 'PM'.freeze,

      # Pitcairn
      PN = 'PN'.freeze,

      # Puerto Rico
      PR = 'PR'.freeze,

      # Palestinian Territory
      PS = 'PS'.freeze,

      # Portugal
      PT = 'PT'.freeze,

      # Palau
      PW = 'PW'.freeze,

      # Paraguay
      PY = 'PY'.freeze,

      # Qatar
      QA = 'QA'.freeze,

      # Reunion
      RE = 'RE'.freeze,

      # Romania
      RO = 'RO'.freeze,

      # Serbia
      RS = 'RS'.freeze,

      # Russian Federation
      RU = 'RU'.freeze,

      # Rwanda
      RW = 'RW'.freeze,

      # Saudi Arabia
      SA = 'SA'.freeze,

      # Solomon Islands
      SB = 'SB'.freeze,

      # Seychelles
      SC = 'SC'.freeze,

      # Sudan
      SD = 'SD'.freeze,

      # Sweden
      SE = 'SE'.freeze,

      # Singapore
      SG = 'SG'.freeze,

      # Saint Helena
      SH = 'SH'.freeze,

      # Slovenia
      SI = 'SI'.freeze,

      # Svalbard and Jan Mayen Islands
      SJ = 'SJ'.freeze,

      # Slovakia
      SK = 'SK'.freeze,

      # Sierra Leone
      SL = 'SL'.freeze,

      # San Marino
      SM = 'SM'.freeze,

      # Senegal
      SN = 'SN'.freeze,

      # Somalia
      SO = 'SO'.freeze,

      # Suriname
      SR = 'SR'.freeze,

      # South Sudan
      SS = 'SS'.freeze,

      # Sao Tome and Principe
      ST = 'ST'.freeze,

      # El Salvador
      SV = 'SV'.freeze,

      # Sint Maarten
      SX = 'SX'.freeze,

      # Syria
      SY = 'SY'.freeze,

      # Swaziland
      SZ = 'SZ'.freeze,

      # Turks and Caicos Islands
      TC = 'TC'.freeze,

      # Chad
      TD = 'TD'.freeze,

      # French Southern Territories
      TF = 'TF'.freeze,

      # Togo
      TG = 'TG'.freeze,

      # Thailand
      TH = 'TH'.freeze,

      # Tajikistan
      TJ = 'TJ'.freeze,

      # Tokelau
      TK = 'TK'.freeze,

      # East Timor
      TL = 'TL'.freeze,

      # Turkmenistan
      TM = 'TM'.freeze,

      # Tunisia
      TN = 'TN'.freeze,

      # Tonga
      TO = 'TO'.freeze,

      # Turkey
      TR = 'TR'.freeze,

      # Trinidad and Tobago
      TT = 'TT'.freeze,

      # Tuvalu
      TV = 'TV'.freeze,

      # Taiwan
      TW = 'TW'.freeze,

      # Tanzania
      TZ = 'TZ'.freeze,

      # Ukraine
      UA = 'UA'.freeze,

      # Uganda
      UG = 'UG'.freeze,

      # United States Minor Outlying Islands
      UM = 'UM'.freeze,

      # United States of America
      US = 'US'.freeze,

      # Uruguay
      UY = 'UY'.freeze,

      # Uzbekistan
      UZ = 'UZ'.freeze,

      # Vatican
      VA = 'VA'.freeze,

      # Saint Vincent and Grenadines
      VC = 'VC'.freeze,

      # Venezuela
      VE = 'VE'.freeze,

      # British Virgin Islands
      VG = 'VG'.freeze,

      # U.S. Virgin Islands
      VI = 'VI'.freeze,

      # Vietnam
      VN = 'VN'.freeze,

      # Vanuatu
      VU = 'VU'.freeze,

      # Wallis and Futuna Islands
      WF = 'WF'.freeze,

      # Samoa
      WS = 'WS'.freeze,

      # Yemen
      YE = 'YE'.freeze,

      # Mayotte
      YT = 'YT'.freeze,

      # South Africa
      ZA = 'ZA'.freeze,

      # Zambia
      ZM = 'ZM'.freeze,

      # Zimbabwe
      ZW = 'ZW'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COUNTRIES.include?(value)
    end

    def self.from_value(value, default_value = AD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'ad' then AD
      when 'ae' then AE
      when 'af' then AF
      when 'ag' then AG
      when 'ai' then AI
      when 'al' then AL
      when 'am' then AM
      when 'an' then AN
      when 'ao' then AO
      when 'aq' then AQ
      when 'ar' then AR
      when 'as' then AS
      when 'at' then AT
      when 'au' then AU
      when 'aw' then AW
      when 'ax' then AX
      when 'az' then AZ
      when 'ba' then BA
      when 'bb' then BB
      when 'bd' then BD
      when 'be' then BE
      when 'bf' then BF
      when 'bg' then BG
      when 'bh' then BH
      when 'bi' then BI
      when 'bj' then BJ
      when 'bl' then BL
      when 'bm' then BM
      when 'bn' then BN
      when 'bo' then BO
      when 'bq' then BQ
      when 'br' then BR
      when 'bs' then BS
      when 'bt' then BT
      when 'bv' then BV
      when 'bw' then BW
      when 'by' then BY
      when 'bz' then BZ
      when 'ca' then CA
      when 'cc' then CC
      when 'cd' then CD
      when 'cf' then CF
      when 'cg' then CG
      when 'ch' then CH
      when 'ci' then CI
      when 'ck' then CK
      when 'cl' then CL
      when 'cm' then CM
      when 'cn' then CN
      when 'co' then CO
      when 'cr' then CR
      when 'cu' then CU
      when 'cv' then CV
      when 'cw' then CW
      when 'cx' then CX
      when 'cy' then CY
      when 'cz' then CZ
      when 'de' then DE
      when 'dj' then DJ
      when 'dk' then DK
      when 'dm' then DM
      when 'do' then DO
      when 'dz' then DZ
      when 'ec' then EC
      when 'ee' then EE
      when 'eg' then EG
      when 'eh' then EH
      when 'er' then ER
      when 'es' then ES
      when 'et' then ET
      when 'fi' then FI
      when 'fj' then FJ
      when 'fk' then FK
      when 'fm' then FM
      when 'fo' then FO
      when 'fr' then FR
      when 'ga' then GA
      when 'gb' then GB
      when 'gd' then GD
      when 'ge' then GE
      when 'gf' then GF
      when 'gg' then GG
      when 'gh' then GH
      when 'gi' then GI
      when 'gl' then GL
      when 'gm' then GM
      when 'gn' then GN
      when 'gp' then GP
      when 'gq' then GQ
      when 'gr' then GR
      when 'gs' then GS
      when 'gt' then GT
      when 'gu' then GU
      when 'gw' then GW
      when 'gy' then GY
      when 'hk' then HK
      when 'hm' then HM
      when 'hn' then HN
      when 'hr' then HR
      when 'ht' then HT
      when 'hu' then HU
      when 'id' then ID
      when 'ie' then IE
      when 'il' then IL
      when 'im' then IM
      when 'in' then IN
      when 'io' then IO
      when 'iq' then IQ
      when 'ir' then IR
      when 'is' then IS
      when 'it' then IT
      when 'je' then JE
      when 'jm' then JM
      when 'jo' then JO
      when 'jp' then JP
      when 'ke' then KE
      when 'kg' then KG
      when 'kh' then KH
      when 'ki' then KI
      when 'km' then KM
      when 'kn' then KN
      when 'kp' then KP
      when 'kr' then KR
      when 'kw' then KW
      when 'ky' then KY
      when 'kz' then KZ
      when 'la' then LA
      when 'lb' then LB
      when 'lc' then LC
      when 'li' then LI
      when 'lk' then LK
      when 'lr' then LR
      when 'ls' then LS
      when 'lt' then LT
      when 'lu' then LU
      when 'lv' then LV
      when 'ly' then LY
      when 'ma' then MA
      when 'mc' then MC
      when 'md' then MD
      when 'me' then ME
      when 'mf' then MF
      when 'mg' then MG
      when 'mh' then MH
      when 'mk' then MK
      when 'ml' then ML
      when 'mm' then MM
      when 'mn' then MN
      when 'mo' then MO
      when 'mp' then MP
      when 'mq' then MQ
      when 'mr' then MR
      when 'ms' then MS
      when 'mt' then MT
      when 'mu' then MU
      when 'mv' then MV
      when 'mw' then MW
      when 'mx' then MX
      when 'my' then MY
      when 'mz' then MZ
      when 'na' then NA
      when 'nc' then NC
      when 'ne' then NE
      when 'nf' then NF
      when 'ng' then NG
      when 'ni' then NI
      when 'nl' then NL
      when 'no' then NO
      when 'np' then NP
      when 'nr' then NR
      when 'nu' then NU
      when 'nz' then NZ
      when 'om' then OM
      when 'pa' then PA
      when 'pe' then PE
      when 'pf' then PF
      when 'pg' then PG
      when 'ph' then PH
      when 'pk' then PK
      when 'pl' then PL
      when 'pm' then PM
      when 'pn' then PN
      when 'pr' then PR
      when 'ps' then PS
      when 'pt' then PT
      when 'pw' then PW
      when 'py' then PY
      when 'qa' then QA
      when 're' then RE
      when 'ro' then RO
      when 'rs' then RS
      when 'ru' then RU
      when 'rw' then RW
      when 'sa' then SA
      when 'sb' then SB
      when 'sc' then SC
      when 'sd' then SD
      when 'se' then SE
      when 'sg' then SG
      when 'sh' then SH
      when 'si' then SI
      when 'sj' then SJ
      when 'sk' then SK
      when 'sl' then SL
      when 'sm' then SM
      when 'sn' then SN
      when 'so' then SO
      when 'sr' then SR
      when 'ss' then SS
      when 'st' then ST
      when 'sv' then SV
      when 'sx' then SX
      when 'sy' then SY
      when 'sz' then SZ
      when 'tc' then TC
      when 'td' then TD
      when 'tf' then TF
      when 'tg' then TG
      when 'th' then TH
      when 'tj' then TJ
      when 'tk' then TK
      when 'tl' then TL
      when 'tm' then TM
      when 'tn' then TN
      when 'to' then TO
      when 'tr' then TR
      when 'tt' then TT
      when 'tv' then TV
      when 'tw' then TW
      when 'tz' then TZ
      when 'ua' then UA
      when 'ug' then UG
      when 'um' then UM
      when 'us' then US
      when 'uy' then UY
      when 'uz' then UZ
      when 'va' then VA
      when 'vc' then VC
      when 've' then VE
      when 'vg' then VG
      when 'vi' then VI
      when 'vn' then VN
      when 'vu' then VU
      when 'wf' then WF
      when 'ws' then WS
      when 'ye' then YE
      when 'yt' then YT
      when 'za' then ZA
      when 'zm' then ZM
      when 'zw' then ZW
      else
        default_value
      end
    end
  end
end
