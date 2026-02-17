# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # ClientSideController
  class ClientSideController < BaseController
    # Generate a token used to reveal [prepaid
    # card](page:resources/prepaid-cards) information in the form of image data
    # (base64) or JSON.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [PrepaidCardDataType] format Required parameter: Desired format for
    # the prepaid card data.
    # @param [PrepaidCardImageSide] side Optional parameter: Side to specify
    # when retrieving a prepaid card's image data. *Required if IMAGE format
    # specified.
    # @return [PrepaidCardDataTokenResult] Response from the API call.
    def create_card_data_token(user_token,
                               destination_token,
                               format,
                               side: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/pci',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(format, key: 'format')
                                 .is_required(true))
                   .query_param(new_parameter(side, key: 'side'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardDataTokenResult.method(:from_hash))
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

    # Return [prepaid card](page:resources/prepaid-cards) data in the form of
    # image data, text, or both.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [PrepaidCardDataType] format Required parameter: Desired format for
    # the prepaid card data.
    # @param [PrepaidCardImageSide] side Optional parameter: Side to specify
    # when retrieving a prepaid card's image data. *Required if IMAGE format
    # specified.
    # @param [RetrieveCardData] body Optional parameter: TODO: type description
    # here
    # @return [PrepaidCardDataResult] Response from the API call.
    def retrieve_card_data(user_token,
                           destination_token,
                           format,
                           side: nil,
                           body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/pci',
                                     Server::API)
                   .template_param(new_parameter(user_token, key: 'user-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(destination_token, key: 'destination-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(format, key: 'format')
                                 .is_required(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .query_param(new_parameter(side, key: 'side'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('clientside')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardDataResult.method(:from_hash))
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

    # Retrieve one part of a two-part token required to reveal or set a client
    # side [prepaid card](page:resources/prepaid-cards) PIN.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @return [PrepaidCardPinTokenResult] Response from the API call.
    def create_card_pin_token(user_token,
                              destination_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/pin',
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
                    .deserialize_into(PrepaidCardPinTokenResult.method(:from_hash))
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

    # Set a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid
    # card](page:resources/prepaid-cards), if supported by program.
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [UpdateCardPin] body Optional parameter: TODO: type description
    # here
    # @return [OperationResult] Response from the API call.
    def update_card_pin(user_token,
                        destination_token,
                        body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/pin',
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
                   .auth(Single.new('clientside')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(OperationResult.method(:from_hash))
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

    # Reveal a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid
    # card](page:resources/prepaid-cards).
    # @param [String] user_token Required parameter: Auto-generated unique
    # identifier representing a user, prefixed with `user-`.
    # @param [String] destination_token Required parameter: Auto-generated
    # unique identifier representing a transfer destination, including prepaid
    # cards, bank accounts, paper checks, and other users, prefixed with
    # `dest-`.
    # @param [RetrieveCardPin] body Optional parameter: TODO: type description
    # here
    # @return [PrepaidCardPinResult] Response from the API call.
    def retrieve_card_pin(user_token,
                          destination_token,
                          body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/users/{user-token}/prepaid-cards/{destination-token}/pin',
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
                   .auth(Single.new('clientside')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PrepaidCardPinResult.method(:from_hash))
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
