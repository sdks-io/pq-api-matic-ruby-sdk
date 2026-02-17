# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # WebhooksController
  class WebhooksController < BaseController
    # Retrieve a list of all [webhook subscriptions](page:resources/webhooks)
    # that supports filtering, sorting, and pagination through existing
    # mechanisms
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
    # @return [WebhookSubscriptionListResult] Response from the API call.
    def list_subscriptions(page,
                           page_size,
                           filter: nil,
                           sort: nil,
                           language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/webhooks',
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
                    .deserialize_into(WebhookSubscriptionListResult.method(:from_hash))
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

    # Update a [webhook subscription](page:resources/webhooks).
    # @param [CreateWebhookRequest] body Optional parameter: TODO: type
    # description here
    # @return [WebhookSubscriptionResult] Response from the API call.
    def update_subscription(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/webhooks',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WebhookSubscriptionResult.method(:from_hash))
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

    # Create a [webhook subscription](page:resources/webhooks).
    # @param [CreateWebhookRequest] body Optional parameter: TODO: type
    # description here
    # @return [WebhookSubscriptionResult] Response from the API call.
    def create_subscription(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/webhooks',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WebhookSubscriptionResult.method(:from_hash))
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

    # Retrieve a single [webhook subscription](page:resources/webhooks) using
    # the webhook token.
    # @param [String] webhook_token Required parameter: Auto-generated unique
    # identifier representing a webhook subscription, prefixed with `webh-`.
    # @return [WebhookSubscriptionResult] Response from the API call.
    def retrieve_subscription(webhook_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/webhooks/{webhook-token}',
                                     Server::API)
                   .template_param(new_parameter(webhook_token, key: 'webhook-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WebhookSubscriptionResult.method(:from_hash))
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

    # Delete a [webhook subscription](page:resources/webhooks).
    # @param [String] webhook_token Required parameter: Auto-generated unique
    # identifier representing a webhook subscription, prefixed with `webh-`.
    # @return [WebhookSubscriptionResult] Response from the API call.
    def delete_subscription(webhook_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/webhooks/{webhook-token}',
                                     Server::API)
                   .template_param(new_parameter(webhook_token, key: 'webhook-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WebhookSubscriptionResult.method(:from_hash))
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
