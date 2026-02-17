# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # SpendbackController
  class SpendbackController < BaseController
    # Retrieve a list of [spendbacks](page:resources/spendbacks) that supports
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
    # @return [SpendbackListResult] Response from the API call.
    def list_spendbacks(page,
                        page_size,
                        filter: nil,
                        sort: nil,
                        language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/spend-back',
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
                    .deserialize_into(SpendbackListResult.method(:from_hash))
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

    # Create a [spendback](page:resources/spendbacks) quote.
    # @param [GatewaySpendbackQuote | PortalSpendbackQuote | nil] body Optional
    # parameter: TODO: type description here
    # @return [SpendbackResult] Response from the API call.
    def create_spendback_quote(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/spend-back',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .validator(proc do |value|
                                  UnionTypeLookUp.get(:SpendbackQuote)
                                                 .validate(value)
                                end))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(APIHelper.method(:json_serialize))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackResult.method(:from_hash))
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

    # Retrieve a single [spendbacks](page:resources/spendbacks) quote using the
    # spendback token.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
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
    # @return [SpendbackResult] Response from the API call.
    def retrieve_spendback(spendback_token,
                           page,
                           page_size,
                           filter: nil,
                           sort: nil,
                           language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/spend-back/{spendback-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
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
                    .deserialize_into(SpendbackResult.method(:from_hash))
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

    # Accept an open [spendback](page:resources/spendbacks) quote.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @return [SpendbackResult] Response from the API call.
    def accept_spendback_quote(spendback_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/spend-back/{spendback-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackResult.method(:from_hash))
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

    # Cancel an open [spendback](page:resources/spendbacks) quote.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @return [SpendbackResult] Response from the API call.
    def cancel_spendback_quote(spendback_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/spend-back/{spendback-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackResult.method(:from_hash))
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
