# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # InvitationsController
  class InvitationsController < BaseController
    # Retrieve a list of [invitations](page:resources/invitations) that supports
    # filtering, sorting, and pagination through existing mechanisms.
    # @param [Integer] page Required parameter: Page number of specific page to
    # return
    # @param [Integer] page_size Required parameter: Number of items to be
    # displayed per page
    # @param [String] filter Optional parameter: Filter request results by
    # specific criteria.
    # @param [String] sort Optional parameter: Sort request results by specific
    # attribute.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [InvitationListResult] Response from the API call.
    def list_invitations(page,
                         page_size,
                         filter: nil,
                         sort: nil,
                         language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/invitations',
                                     Server::API)
                   .query_param(new_parameter(page, key: 'page')
                                 .is_required(true))
                   .query_param(new_parameter(page_size, key: 'pageSize')
                                 .is_required(true))
                   .query_param(new_parameter(filter, key: 'filter'))
                   .query_param(new_parameter(sort, key: 'sort'))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InvitationListResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Create a [invitation](page:resources/invitations) quote.
    # @param [CreateInvitation] body Optional parameter: TODO: type description
    # here
    # @return [InvitationResult] Response from the API call.
    def create_invitation(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/invitations',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InvitationResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Retrieve a single [invitation](page:resources/invitations).
    # @param [String] invitation_token Required parameter: Auto-generated unique
    # identifier representing an invite, prefixed with `invt-`.
    # @param [String] filter Optional parameter: Filter request results by
    # specific criteria.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [InvitationResult] Response from the API call.
    def retrieve_invitation(invitation_token,
                            filter: nil,
                            language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/invitations/{invitation-token}',
                                     Server::API)
                   .template_param(new_parameter(invitation_token, key: 'invitation-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(filter, key: 'filter'))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InvitationResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Accept an open [invitation](page:resources/invitations) quote.
    # @param [String] invitation_token Required parameter: Auto-generated unique
    # identifier representing an invite, prefixed with `invt-`.
    # @return [InvitationResult] Response from the API call.
    def update_invitation(invitation_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/invitations/{invitation-token}',
                                     Server::API)
                   .template_param(new_parameter(invitation_token, key: 'invitation-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InvitationResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Cancel an open [invitation](page:resources/invitations) quote.
    # @param [String] invitation_token Required parameter: Auto-generated unique
    # identifier representing an invite, prefixed with `invt-`.
    # @return [InvitationResult] Response from the API call.
    def cancel_invitation(invitation_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/invitations/{invitation-token}',
                                     Server::API)
                   .template_param(new_parameter(invitation_token, key: 'invitation-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InvitationResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end
  end
end
