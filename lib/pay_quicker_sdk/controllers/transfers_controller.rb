# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # TransfersController
  class TransfersController < BaseController
    # Retrieve a list of [transfers](page:resources/transfers) that supports
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
    # @return [TransferListResult] Response from the API call.
    def list_transfers(page,
                       page_size,
                       filter: nil,
                       sort: nil,
                       language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transfers',
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
                    .deserialize_into(TransferListResult.method(:from_hash))
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

    # Create a new [transfer](page:resources/transfers) quote.
    # @param [GatewayTransferQuote | PortalTransferQuote | nil] body Optional
    # parameter: TODO: type description here
    # @return [TransferResult] Response from the API call.
    def create_transfer_quote(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/transfers',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .validator(proc do |value|
                                  UnionTypeLookUp.get(:TransferQuote)
                                                 .validate(value)
                                end))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(APIHelper.method(:json_serialize))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransferResult.method(:from_hash))
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

    # Retrieve details of a specific [transfer](page:resources/transfers)
    # represented by a transfer token.
    # @param [String] transfer_token Required parameter: Auto-generated unique
    # identifier representing an individual transfer transaction, prefixed with
    # `xfer-`.
    # @return [TransferResult] Response from the API call.
    def retrieve_transfer(transfer_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transfers/{transfer-token}',
                                     Server::API)
                   .template_param(new_parameter(transfer_token, key: 'transfer-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransferResult.method(:from_hash))
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

    # Accept a [transfer](page:resources/transfers) quote.
    # @param [String] transfer_token Required parameter: Auto-generated unique
    # identifier representing an individual transfer transaction, prefixed with
    # `xfer-`.
    # @return [TransferResult] Response from the API call.
    def accept_transfer_quote(transfer_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/transfers/{transfer-token}',
                                     Server::API)
                   .template_param(new_parameter(transfer_token, key: 'transfer-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransferResult.method(:from_hash))
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

    # Optional [transfer](page:resources/transfers) quote cancellation that
    # auto-cancels after a period organically expires or when account activity
    # invalidates the quote.
    # @param [String] transfer_token Required parameter: Auto-generated unique
    # identifier representing an individual transfer transaction, prefixed with
    # `xfer-`.
    # @return [TransferResult] Response from the API call.
    def cancel_transfer_quote(transfer_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/transfers/{transfer-token}',
                                     Server::API)
                   .template_param(new_parameter(transfer_token, key: 'transfer-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransferResult.method(:from_hash))
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

    # Retrieve a list of user [transfers](page:resources/transfers) that
    # supports filtering, sorting, and pagination through existing mechanisms.
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
    # @return [TransferListResult] Response from the API call.
    def list_user_transfers(user_token,
                            page,
                            page_size,
                            filter: nil,
                            sort: nil,
                            language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/transfers',
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
                    .deserialize_into(TransferListResult.method(:from_hash)))
        .execute
    end

    # Retrieve a specific user bank [transfer](page:resources/transfers).
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] transfer_token Required parameter: Auto-generated unique
    # identifier representing a transfer, prefixed with `xfer-`.
    # @return [TransferResult] Response from the API call.
    def retrieve_user_transfer(user_token,
                               transfer_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/transfers/{transfer-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(transfer_token, key: 'transfer-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransferResult.method(:from_hash))
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
