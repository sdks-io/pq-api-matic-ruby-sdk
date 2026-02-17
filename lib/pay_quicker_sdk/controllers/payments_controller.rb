# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # PaymentsController
  class PaymentsController < BaseController
    # Retrieve a list of [payments](page:resources/payments) that supports
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
    # @return [PaymentListResult] Response from the API call.
    def list_payments(page,
                      page_size,
                      filter: nil,
                      sort: nil,
                      language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payments',
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
                    .deserialize_into(PaymentListResult.method(:from_hash))
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

    # Create a [payment](page:resources/payments) quote.
    # @param [GatewayPaymentQuote | PortalPaymentQuote | nil] body Optional
    # parameter: TODO: type description here
    # @return [PaymentResult] Response from the API call.
    def create_payment_quote(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/payments',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .validator(proc do |value|
                                  UnionTypeLookUp.get(:PaymentQuote)
                                                 .validate(value)
                                end))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(APIHelper.method(:json_serialize))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentResult.method(:from_hash))
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

    # Retrieve a single [payment](page:resources/payments).
    # @param [String] payment_token Required parameter: Auto-generated unique
    # identifier representing an individual payment transaction and quote,
    # prefixed with `pmnt-`.
    # @param [String] filter Optional parameter: Filter request results by
    # specific criteria.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [PaymentResult] Response from the API call.
    def retrieve_payment(payment_token,
                         filter: nil,
                         language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payments/{payment-token}',
                                     Server::API)
                   .template_param(new_parameter(payment_token, key: 'payment-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(filter, key: 'filter'))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentResult.method(:from_hash))
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

    # Accept an open [payment](page:resources/payments) quote.
    # @param [String] payment_token Required parameter: Auto-generated unique
    # identifier representing an individual payment transaction and quote,
    # prefixed with `pmnt-`.
    # @return [PaymentResult] Response from the API call.
    def accept_payment_quote(payment_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/payments/{payment-token}',
                                     Server::API)
                   .template_param(new_parameter(payment_token, key: 'payment-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentResult.method(:from_hash))
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

    # Cancel an open [payment](page:resources/payments) quote.
    # @param [String] payment_token Required parameter: Auto-generated unique
    # identifier representing an individual payment transaction and quote,
    # prefixed with `pmnt-`.
    # @return [PaymentResult] Response from the API call.
    def cancel_payment_quote(payment_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/payments/{payment-token}',
                                     Server::API)
                   .template_param(new_parameter(payment_token, key: 'payment-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentResult.method(:from_hash))
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

    # Perform a [payment](page:resources/payments) retraction for the full
    # payment amount.
    # @param [String] payment_token Required parameter: Auto-generated unique
    # identifier representing an individual payment transaction and quote,
    # prefixed with `pmnt-`.
    # @return [PaymentResult] Response from the API call.
    def retract_payment(payment_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/payments/{payment-token}/retract',
                                     Server::API)
                   .template_param(new_parameter(payment_token, key: 'payment-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentResult.method(:from_hash))
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
