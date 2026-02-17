# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # StatementsController
  class StatementsController < BaseController
    # List Prepaid Card Statements for specific user
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
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
    # @return [StatementListResult] Response from the API call.
    def list_prepaid_card_statements(user_token,
                                     destination_token,
                                     page,
                                     page_size,
                                     filter: nil,
                                     sort: nil,
                                     language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/statements',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
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
                    .deserialize_into(StatementListResult.method(:from_hash))
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

    # Retrieve a single prepaid card agreement.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [String] document_token Required parameter: Auto-generated unique
    # identifier representing an uploaded document, prefixed with `docu-`.
    # @return [StatementResult] Response from the API call.
    def retrieve_prepaid_card_statement(user_token,
                                        destination_token,
                                        document_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/statements/{document-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(document_token, key: 'document-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(StatementResult.method(:from_hash))
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

    # Returns all statements for the specified user
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
    # @return [StatementListResult] Response from the API call.
    def list_statements(user_token,
                        page,
                        page_size,
                        filter: nil,
                        sort: nil,
                        language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/statements',
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
                    .deserialize_into(StatementListResult.method(:from_hash))
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

    # Return a specific statement
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] document_token Required parameter: Auto-generated unique
    # identifier representing an uploaded document, prefixed with `docu-`.
    # @return [StatementResult] Response from the API call.
    def retrieve_statement(user_token,
                           document_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/statements/{document-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(document_token, key: 'document-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(StatementResult.method(:from_hash))
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
