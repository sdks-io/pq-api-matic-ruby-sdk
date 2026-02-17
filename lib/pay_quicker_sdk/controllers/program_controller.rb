# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ProgramController
  class ProgramController < BaseController
    # Retrieve a list of [programs](page:resources/programs) that supports
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
    # @return [ProgramListResult] Response from the API call.
    def list_programs(page,
                      page_size,
                      filter: nil,
                      sort: nil,
                      language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/programs',
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
                    .deserialize_into(ProgramListResult.method(:from_hash))
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

    # Retrieve a single [program](page:resources/programs) by its program token.
    # @param [String] program_token Required parameter: Auto-generated unique
    # identifier representing a program, prefixed with `prog-`.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [ProgramResult] Response from the API call.
    def retrieve_program(program_token,
                         language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/programs/{program-token}',
                                     Server::API)
                   .template_param(new_parameter(program_token, key: 'program-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProgramResult.method(:from_hash))
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
