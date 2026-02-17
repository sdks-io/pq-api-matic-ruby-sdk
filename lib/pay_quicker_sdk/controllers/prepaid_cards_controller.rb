# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PrepaidCardsController
  class PrepaidCardsController < BaseController
    # Retrieve a list of [prepaid cards](page:resources/prepaid-cards) by user
    # token that supports filtering, sorting, and pagination through existing
    # mechanisms.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
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
    # @return [PrepaidCardListResult] Response from the API call.
    def list_prepaid_cards(user_token,
                           page,
                           page_size,
                           filter: nil,
                           sort: nil,
                           language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
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
                    .deserialize_into(PrepaidCardListResult.method(:from_hash))
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

    # Order a [prepaid card](page:resources/prepaid-cards) for the user by
    # specifying a cardPackage.
    # Assign a prepaid card to a user when a program token and card reference
    # number are supplied.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [OrderPrepaidCard] body Optional parameter: TODO: type description
    # here
    # @return [PrepaidCardResult] Response from the API call.
    def order_prepaid_card(user_token,
                           body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/users/{user-token}/prepaid-cards',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardResult.method(:from_hash))
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

    # Replace a [prepaid card](page:resources/prepaid-cards) by destination
    # token.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [ReplacePrepaidCard] body Optional parameter: TODO: type
    # description here
    # @return [PrepaidCardResult] Response from the API call.
    def replace_prepaid_card(user_token,
                             destination_token,
                             body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/users/{user-token}/prepaid-cards/{destination-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardResult.method(:from_hash))
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

    # Retrieve [prepaid card](page:resources/prepaid-cards) details by
    # destination token.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @return [PrepaidCardResult] Response from the API call.
    def retrieve_prepaid_card(user_token,
                              destination_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardResult.method(:from_hash))
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

    # Partial [prepaid card](page:resources/prepaid-cards) update.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [UpdatePrepaidCard] body Optional parameter: TODO: type description
    # here
    # @return [PrepaidCardResult] Response from the API call.
    def update_prepaid_card(user_token,
                            destination_token,
                            body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/users/{user-token}/prepaid-cards/{destination-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardResult.method(:from_hash))
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

    # TODO
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @return [AuthorizationListResult] Response from the API call.
    def list_card_authorizations(user_token,
                                 destination_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/authorizations',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(AuthorizationListResult.method(:from_hash))
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
