# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Job Status Types
  class JobStatusTypes
    JOB_STATUS_TYPES = [
      # COMPLETED.
      COMPLETED = 'COMPLETED'.freeze,

      # APPROVED.
      APPROVED = 'APPROVED'.freeze,

      # CANCELLED.
      CANCELLED = 'CANCELLED'.freeze,

      # FAILED.
      FAILED = 'FAILED'.freeze,

      # IN_PROGRESS.
      IN_PROGRESS = 'IN_PROGRESS'.freeze,

      # PARSING.
      PARSING = 'PARSING'.freeze,

      # PENDING_REVIEW.
      PENDING_REVIEW = 'PENDING_REVIEW'.freeze,

      # PROCESSING.
      PROCESSING = 'PROCESSING'.freeze,

      # SCHEDULED.
      SCHEDULED = 'SCHEDULED'.freeze,

      # SUBMITTED.
      SUBMITTED = 'SUBMITTED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      JOB_STATUS_TYPES.include?(value)
    end

    def self.from_value(value, default_value = COMPLETED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'completed' then COMPLETED
      when 'approved' then APPROVED
      when 'cancelled' then CANCELLED
      when 'failed' then FAILED
      when 'in_progress' then IN_PROGRESS
      when 'parsing' then PARSING
      when 'pending_review' then PENDING_REVIEW
      when 'processing' then PROCESSING
      when 'scheduled' then SCHEDULED
      when 'submitted' then SUBMITTED
      else
        default_value
      end
    end
  end
end
