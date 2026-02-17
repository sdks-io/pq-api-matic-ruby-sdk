# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Status Type of a document
  class DocumentStatusTypes
    DOCUMENT_STATUS_TYPES = [
      # TODO: Write general description for NOT_PROVIDED
      NOT_PROVIDED = 'NOT_PROVIDED'.freeze,

      # TODO: Write general description for PROVIDED
      PROVIDED = 'PROVIDED'.freeze,

      # TODO: Write general description for UNDER_REVIEW
      UNDER_REVIEW = 'UNDER_REVIEW'.freeze,

      # TODO: Write general description for APPROVED
      APPROVED = 'APPROVED'.freeze,

      # TODO: Write general description for REJECTED
      REJECTED = 'REJECTED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DOCUMENT_STATUS_TYPES.include?(value)
    end

    def self.from_value(value, default_value = NOT_PROVIDED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'not_provided' then NOT_PROVIDED
      when 'provided' then PROVIDED
      when 'under_review' then UNDER_REVIEW
      when 'approved' then APPROVED
      when 'rejected' then REJECTED
      else
        default_value
      end
    end
  end
end
