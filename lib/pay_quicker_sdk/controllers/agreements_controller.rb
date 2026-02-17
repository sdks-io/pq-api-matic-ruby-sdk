# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # AgreementsController
  class AgreementsController < BaseController
    # Retrieve a list of program [agreements](page:resources/agreements) that
    # supports filtering, sorting, and pagination through existing mechanisms.
    # @param [String] program_token Required parameter: Auto-generated unique
    # identifier representing a program, prefixed with `prog-`.
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
    # @return [AgreementListResultJson] Response from the API call.
    def list_agreements(program_token,
                        page,
                        page_size,
                        filter: nil,
                        sort: nil,
                        language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/programs/{program-token}/agreements',
                                     Server::API)
                   .template_param(new_parameter(program_token, key: 'program-token')
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
                    .deserialize_into(AgreementListResultJson.method(:from_hash))
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

    # Retrieve a single program [agreement](page:resources/agreements).
    # @param [String] program_token Required parameter: Auto-generated unique
    # identifier representing a program, prefixed with `prog-`.
    # @param [String] agreement_token Required parameter: Auto-generated unique
    # identifier representing a program agreement, prefixed with `agmt-`.
    # @return [AgreementResult] Response from the API call.
    def retrieve_program_agreement(program_token,
                                   agreement_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/programs/{program-token}/agreements/{agreement-token}',
                                     Server::API)
                   .template_param(new_parameter(program_token, key: 'program-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(agreement_token, key: 'agreement-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(AgreementResult.method(:from_hash))
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

    # Accept a single program [agreement](page:resources/agreements).
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] agreement_token Required parameter: Auto-generated unique
    # identifier representing a program agreement, prefixed with `agmt-`.
    # @return [void] Response from the API call.
    def accept_agreement(user_token,
                         agreement_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/users/{user-token}/agreements/{agreement-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(agreement_token, key: 'agreement-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .is_response_void(true)
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
