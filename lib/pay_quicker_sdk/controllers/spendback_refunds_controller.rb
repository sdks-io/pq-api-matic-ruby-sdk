# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # SpendbackRefundsController
  class SpendbackRefundsController < BaseController
    # Retrieve a list of [spendbacks](page:resources/spendbacks) refunds that
    # supports filtering, sorting, and pagination through existing mechanisms.
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
    # @return [SpendbackRefundListResult] Response from the API call.
    def list_spendback_refunds(spendback_token,
                               page,
                               page_size,
                               filter: nil,
                               sort: nil,
                               language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/spend-back/{spendback-token}/refund',
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
                    .deserialize_into(SpendbackRefundListResult.method(:from_hash))
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

    # Perform a [spendback](page:resources/spendbacks) refund for a partial
    # amount.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @param [CreateSpendbackRefundQuote] body Optional parameter: TODO: type
    # description here
    # @return [SpendbackRefundResult] Response from the API call.
    def create_spendback_refund_quote(spendback_token,
                                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/spend-back/{spendback-token}/refund',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackRefundResult.method(:from_hash))
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

    # Cancel an spendback refund quote.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @param [String] refund_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back refund transaction and
    # quote, prefixed with `rfnd-`.
    # @return [SpendbackRefundResult] Response from the API call.
    def cancel_spendback_refund_quote(spendback_token,
                                      refund_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/spend-back/{spendback-token}/refund/{refund-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(refund_token, key: 'refund-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackRefundResult.method(:from_hash))
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

    # Retrieve a single spendback refund using the rfnd token
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @param [String] refund_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back refund transaction and
    # quote, prefixed with `rfnd-`.
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
    # @return [SpendbackRefundResult] Response from the API call.
    def retrieve_spendback_refund(spendback_token,
                                  refund_token,
                                  page,
                                  page_size,
                                  filter: nil,
                                  sort: nil,
                                  language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/spend-back/{spendback-token}/refund/{refund-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(refund_token, key: 'refund-token')
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
                    .deserialize_into(SpendbackRefundResult.method(:from_hash))
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

    # Accept a spendback return quote.
    # @param [String] spendback_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back transaction and quote,
    # prefixed with `spnd-`.
    # @param [String] refund_token Required parameter: Auto-generated unique
    # identifier representing an individual spend back refund transaction and
    # quote, prefixed with `rfnd-`.
    # @return [SpendbackRefundResult] Response from the API call.
    def accept_spendback_refund_quote(spendback_token,
                                      refund_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/spend-back/{spendback-token}/refund/{refund-token}',
                                     Server::API)
                   .template_param(new_parameter(spendback_token, key: 'spendback-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(refund_token, key: 'refund-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SpendbackRefundResult.method(:from_hash))
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
