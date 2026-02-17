# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ReceiptsController
  class ReceiptsController < BaseController
    # Retrieve a list of all account(s) [receipts](page:resources/receipts) that
    # supports filtering, sorting, and pagination through existing mechanisms.
    # @param [String] account_token Required parameter: Auto-generated unique
    # identifier representing a company account, prefixed with `acct-`.
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
    # @return [ReceiptListResult] Response from the API call.
    def list_account_receipts(account_token,
                              page,
                              page_size,
                              filter: nil,
                              sort: nil,
                              language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/accounts/{account-token}/receipts',
                                     Server::API)
                   .template_param(new_parameter(account_token, key: 'account-token')
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
                    .deserialize_into(ReceiptListResult.method(:from_hash))
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

    # Retrieve a single account [receipt](page:resources/receipts)
    # @param [String] account_token Required parameter: Auto-generated unique
    # identifier representing a company account, prefixed with `acct-`.
    # @param [String] receipt_token Required parameter: Auto-generated unique
    # identifier representing a receipt, prefixed with `rcpt-`.
    # @return [ReceiptResult] Response from the API call.
    def retrieve_account_receipt(account_token,
                                 receipt_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/accounts/{account-token}/receipts/{receipt-token}',
                                     Server::API)
                   .template_param(new_parameter(account_token, key: 'account-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(receipt_token, key: 'receipt-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ReceiptResult.method(:from_hash))
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

    # Retrieve a list of [prepaid card](page:resources/prepaid-cards)
    # [receipts](page:resources/receipts) that supports filtering, sorting, and
    # pagination through existing mechanisms.
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
    # @return [ReceiptListResult] Response from the API call.
    def list_prepaid_card_receipts(user_token,
                                   destination_token,
                                   page,
                                   page_size,
                                   filter: nil,
                                   sort: nil,
                                   language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/receipts',
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
                    .deserialize_into(ReceiptListResult.method(:from_hash))
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

    # Retrieve a single user prepaid-card [receipt](page:resources/receipts)
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [String] receipt_token Required parameter: Auto-generated unique
    # identifier representing a receipt, prefixed with `rcpt-`.
    # @return [ReceiptResult] Response from the API call.
    def retrieve_prepaid_card_receipt(user_token,
                                      destination_token,
                                      receipt_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/receipts/{receipt-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(receipt_token, key: 'receipt-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ReceiptResult.method(:from_hash))
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

    # Retrieve a list of  user [receipts](page:resources/receipts) that supports
    # filtering, sorting, and pagination through existing mechanisms.
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
    # @return [ReceiptListResult] Response from the API call.
    def list_user_receipts(user_token,
                           page,
                           page_size,
                           filter: nil,
                           sort: nil,
                           language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/receipts',
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
                    .deserialize_into(ReceiptListResult.method(:from_hash))
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

    # Retrieve a single user [receipt](page:resources/receipts)
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] receipt_token Required parameter: Auto-generated unique
    # identifier representing a receipt, prefixed with `rcpt-`.
    # @return [ReceiptResult] Response from the API call.
    def retrieve_user_receipt(user_token,
                              receipt_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/receipts/{receipt-token}',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(receipt_token, key: 'receipt-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ReceiptResult.method(:from_hash))
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
