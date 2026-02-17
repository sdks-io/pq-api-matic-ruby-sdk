# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # EventObject Model.
  class EventObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [TrueClass | FalseClass]
    attr_accessor :can_be_cancelled

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [EventRequirementCategories]
    attr_accessor :event_requirement_category_type

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [EventRequirements]
    attr_accessor :event_requirement_type

    # Indicates the current verification status type of an event.
    # @return [EventStatuses]
    attr_accessor :event_status

    # Indicates the current verification status type of an event.
    # @return [EventTypes]
    attr_accessor :event_type

    # Indicates the current verification status type of an event.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_complete

    # Indicates the current verification status type of an event.
    # @return [UserAction]
    attr_accessor :user_action

    # Indicates the current verification status type of an event.
    # @return [UserImpact]
    attr_accessor :user_impact

    # The type of Registration tied to a particular event
    # @return [EventCategoryTypes]
    attr_accessor :event

    # The type of Registration tied to a particular event
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['can_be_cancelled'] = 'canBeCancelled'
      @_hash['event_requirement_category_type'] =
        'eventRequirementCategoryType'
      @_hash['event_requirement_type'] = 'eventRequirementType'
      @_hash['event_status'] = 'eventStatus'
      @_hash['event_type'] = 'eventType'
      @_hash['is_complete'] = 'isComplete'
      @_hash['user_action'] = 'userAction'
      @_hash['user_impact'] = 'userImpact'
      @_hash['event'] = 'event'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        can_be_cancelled
        event_requirement_category_type
        event_requirement_type
        event_status
        event_type
        is_complete
        user_action
        user_impact
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(event = nil, token = SKIP, can_be_cancelled = SKIP,
                   event_requirement_category_type = SKIP,
                   event_requirement_type = SKIP, event_status = SKIP,
                   event_type = SKIP, is_complete = SKIP, user_action = SKIP,
                   user_impact = SKIP, links = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @can_be_cancelled = can_be_cancelled unless can_be_cancelled == SKIP
      unless event_requirement_category_type == SKIP
        @event_requirement_category_type =
          event_requirement_category_type
      end
      @event_requirement_type = event_requirement_type unless event_requirement_type == SKIP
      @event_status = event_status unless event_status == SKIP
      @event_type = event_type unless event_type == SKIP
      @is_complete = is_complete unless is_complete == SKIP
      @user_action = user_action unless user_action == SKIP
      @user_impact = user_impact unless user_impact == SKIP
      @event = event
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      event = hash.key?('event') ? hash['event'] : nil
      token = hash.key?('token') ? hash['token'] : SKIP
      can_be_cancelled =
        hash.key?('canBeCancelled') ? hash['canBeCancelled'] : SKIP
      event_requirement_category_type =
        hash.key?('eventRequirementCategoryType') ? hash['eventRequirementCategoryType'] : SKIP
      event_requirement_type =
        hash.key?('eventRequirementType') ? hash['eventRequirementType'] : SKIP
      event_status = hash.key?('eventStatus') ? hash['eventStatus'] : SKIP
      event_type = hash.key?('eventType') ? hash['eventType'] : SKIP
      is_complete = hash.key?('isComplete') ? hash['isComplete'] : SKIP
      user_action = hash.key?('userAction') ? hash['userAction'] : SKIP
      user_impact = hash.key?('userImpact') ? hash['userImpact'] : SKIP
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      EventObject.new(event,
                      token,
                      can_be_cancelled,
                      event_requirement_category_type,
                      event_requirement_type,
                      event_status,
                      event_type,
                      is_complete,
                      user_action,
                      user_impact,
                      links,
                      additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, can_be_cancelled: #{@can_be_cancelled},"\
      " event_requirement_category_type: #{@event_requirement_category_type},"\
      " event_requirement_type: #{@event_requirement_type}, event_status: #{@event_status},"\
      " event_type: #{@event_type}, is_complete: #{@is_complete}, user_action: #{@user_action},"\
      " user_impact: #{@user_impact}, event: #{@event}, links: #{@links}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, can_be_cancelled: #{@can_be_cancelled.inspect},"\
      " event_requirement_category_type: #{@event_requirement_category_type.inspect},"\
      " event_requirement_type: #{@event_requirement_type.inspect}, event_status:"\
      " #{@event_status.inspect}, event_type: #{@event_type.inspect}, is_complete:"\
      " #{@is_complete.inspect}, user_action: #{@user_action.inspect}, user_impact:"\
      " #{@user_impact.inspect}, event: #{@event.inspect}, links: #{@links.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
