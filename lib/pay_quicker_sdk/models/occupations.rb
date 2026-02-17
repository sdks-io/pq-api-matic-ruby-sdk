# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # [Type of occupation](#/rest/models/structures/occupation) for the user
  class Occupations
    OCCUPATIONS = [
      # TODO: Write general description for ARTS
      ARTS = 'ARTS'.freeze,

      # TODO: Write general description for DESIGN
      DESIGN = 'DESIGN'.freeze,

      # TODO: Write general description for EDUCATION
      EDUCATION = 'EDUCATION'.freeze,

      # TODO: Write general description for ENGINEERING
      ENGINEERING = 'ENGINEERING'.freeze,

      # TODO: Write general description for FINANCE
      FINANCE = 'FINANCE'.freeze,

      # TODO: Write general description for GOVERNMENT
      GOVERNMENT = 'GOVERNMENT'.freeze,

      # TODO: Write general description for HEALTHCARE
      HEALTHCARE = 'HEALTHCARE'.freeze,

      # TODO: Write general description for HOSPITALITY_AND_TOURISM
      HOSPITALITY_AND_TOURISM = 'HOSPITALITY_AND_TOURISM'.freeze,

      # TODO: Write general description for INDEPENDENT_BUSINESS_OWNER
      INDEPENDENT_BUSINESS_OWNER = 'INDEPENDENT_BUSINESS_OWNER'.freeze,

      # TODO: Write general description for LAW
      LAW = 'LAW'.freeze,

      # TODO: Write general description for MANUFACTURING
      MANUFACTURING = 'MANUFACTURING'.freeze,

      # TODO: Write general description for MATH
      MATH = 'MATH'.freeze,

      # TODO: Write general description for MEDIA
      MEDIA = 'MEDIA'.freeze,

      # TODO: Write general description for OFFICE_AND_ADMIN_SUPPORT
      OFFICE_AND_ADMIN_SUPPORT = 'OFFICE_AND_ADMIN_SUPPORT'.freeze,

      # TODO: Write general description for SCIENCE
      SCIENCE = 'SCIENCE'.freeze,

      # TODO: Write general description for SOCIAL_SERVICES
      SOCIAL_SERVICES = 'SOCIAL_SERVICES'.freeze,

      # TODO: Write general description for TECHNOLOGY
      TECHNOLOGY = 'TECHNOLOGY'.freeze,

      # TODO: Write general description for SALES
      SALES = 'SALES'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      OCCUPATIONS.include?(value)
    end

    def self.from_value(value, default_value = ARTS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'arts' then ARTS
      when 'design' then DESIGN
      when 'education' then EDUCATION
      when 'engineering' then ENGINEERING
      when 'finance' then FINANCE
      when 'government' then GOVERNMENT
      when 'healthcare' then HEALTHCARE
      when 'hospitality_and_tourism' then HOSPITALITY_AND_TOURISM
      when 'independent_business_owner' then INDEPENDENT_BUSINESS_OWNER
      when 'law' then LAW
      when 'manufacturing' then MANUFACTURING
      when 'math' then MATH
      when 'media' then MEDIA
      when 'office_and_admin_support' then OFFICE_AND_ADMIN_SUPPORT
      when 'science' then SCIENCE
      when 'social_services' then SOCIAL_SERVICES
      when 'technology' then TECHNOLOGY
      when 'sales' then SALES
      else
        default_value
      end
    end
  end
end
