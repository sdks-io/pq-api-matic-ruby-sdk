# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # OAuthAuthorizationController
  class OAuthAuthorizationController < BaseController
    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] Response from the API call.
    def request_token_server(authorization,
                             scope: nil,
                             _field_parameters: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/auth/connect/token',
                                     Server::API)
                   .form_param(new_parameter('client_credentials', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization')
                                  .is_required(true))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(OAuthToken.method(:from_hash))
                    .local_error('400',
                                 'OAuth 2 provider returned an error.',
                                 OAuthProviderException)
                    .local_error('401',
                                 'OAuth 2 provider says client authentication failed.',
                                 OAuthProviderException))
        .execute
    end
  end
end
