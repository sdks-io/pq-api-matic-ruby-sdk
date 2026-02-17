# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # Utility class for OAuth 2 authorization and token management.
  class Server < CoreLibrary::HeaderAuth
    include CoreLibrary
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'Server: OAuthToken is undefined or expired.'
    end

    # Initialization constructor.
    def initialize(server_credentials, config)
      @_o_auth_client_id = server_credentials.o_auth_client_id unless
        server_credentials.nil? || server_credentials.o_auth_client_id.nil?
      @_o_auth_client_secret = server_credentials.o_auth_client_secret unless
        server_credentials.nil? || server_credentials.o_auth_client_secret.nil?
      @_o_auth_token = server_credentials.o_auth_token unless
        server_credentials.nil? || server_credentials.o_auth_token.nil?
      @_o_auth_scopes = server_credentials.o_auth_scopes unless
        server_credentials.nil? || server_credentials.o_auth_scopes.nil?
      @_o_auth_clock_skew = server_credentials.o_auth_clock_skew unless
        server_credentials.nil? || server_credentials.o_auth_clock_skew.nil?
      @_o_auth_token_provider = server_credentials.o_auth_token_provider unless
        server_credentials.nil? || server_credentials.o_auth_token_provider.nil?
      @_o_auth_on_token_update = server_credentials.o_auth_on_token_update unless
        server_credentials.nil? || server_credentials.o_auth_on_token_update.nil?
      @_o_auth_api = OAuthAuthorizationController.new(config)
      super({})
    end

    # Validates the oAuth token.
    # @return [Boolean] true if the token is present and not expired.
    def valid
      @_o_auth_token = get_token_from_provider
      @_o_auth_token.is_a?(OAuthToken) && !token_expired?(@_o_auth_token)
    end

    # Builds the basic auth header for endpoints in the OAuth Authorization Controller.
    # @return [String] The value of the Authentication header.
    def build_basic_auth_header
      "Basic #{AuthHelper.get_base64_encoded_value(@_o_auth_client_id, @_o_auth_client_secret)}"
    end

    # Fetches the token.
    # @param [Hash] additional_params Any additional form parameters.
    # @return [OAuthToken] The oAuth token instance.
    def fetch_token(additional_params: nil)
      token = @_o_auth_api.request_token_server(
        build_basic_auth_header,
        scope: !@_o_auth_scopes.nil? ? Array(@_o_auth_scopes).compact.join(' ') : @_o_auth_scopes,
        _field_parameters: additional_params
      )
      if token.respond_to?('expires_in') && !token.expires_in.nil?
        token.expiry = AuthHelper.get_token_expiry(token.expires_in, Time.now.utc.to_i)
      end
      token
    end

    # Checks if OAuth token has expired.
    # @param [OAuthToken] token The oAuth token instance.
    # @return [Boolean] true if the token's expiry exist and also the token is expired, false otherwise.
    def token_expired?(token)
      token.respond_to?('expiry') && AuthHelper.token_expired?(token.expiry, @_o_auth_clock_skew)
    end

    def apply(http_request)
      auth_params = { 'Authorization' => "Bearer #{@_o_auth_token.access_token}" }
      AuthHelper.apply(auth_params, http_request.method(:add_header))
    end

    private

    # This provides the OAuth Token from either the user configured callbacks or from default provider.
    # @return [OAuthToken] The fetched oauth token.
    def get_token_from_provider
      return @_o_auth_token if @_o_auth_token && !token_expired?(@_o_auth_token)

      if @_o_auth_token_provider
        o_auth_token = @_o_auth_token_provider.call(@_o_auth_token, self)
        @_o_auth_on_token_update&.call(o_auth_token)
        return o_auth_token
      end
      begin
        o_auth_token = fetch_token
        @_o_auth_on_token_update&.call(o_auth_token)
        o_auth_token
      rescue ApiException
        @_o_auth_token
      end
    end
  end

  # Data class for ServerCredentials.
  class ServerCredentials
    attr_reader :o_auth_client_id, :o_auth_client_secret, :o_auth_token,
                :o_auth_scopes, :o_auth_token_provider, :o_auth_on_token_update,
                :o_auth_clock_skew

    def initialize(o_auth_client_id:, o_auth_client_secret:, o_auth_token: nil,
                   o_auth_scopes: nil, o_auth_token_provider: nil,
                   o_auth_on_token_update: nil, o_auth_clock_skew: 0)
      raise ArgumentError, 'o_auth_client_id cannot be nil' if o_auth_client_id.nil?
      raise ArgumentError, 'o_auth_client_secret cannot be nil' if o_auth_client_secret.nil?

      @o_auth_client_id = o_auth_client_id
      @o_auth_client_secret = o_auth_client_secret
      @o_auth_token = o_auth_token
      @o_auth_scopes = o_auth_scopes
      @o_auth_token_provider = o_auth_token_provider
      @o_auth_on_token_update = o_auth_on_token_update
      @o_auth_clock_skew = o_auth_clock_skew
    end

    def self.from_env
      o_auth_client_id = ENV['SERVER_O_AUTH_CLIENT_ID']
      o_auth_client_secret = ENV['SERVER_O_AUTH_CLIENT_SECRET']
      o_auth_scopes = ENV['SERVER_O_AUTH_SCOPES']
      o_auth_clock_skew = ENV['SERVER_O_AUTH_CLOCK_SKEW']
      all_nil = [
        o_auth_client_id,
        o_auth_client_secret
      ].all?(&:nil?)
      return nil if all_nil

      new(o_auth_client_id: o_auth_client_id,
          o_auth_client_secret: o_auth_client_secret,
          o_auth_scopes: o_auth_scopes, o_auth_clock_skew: o_auth_clock_skew)
    end

    def clone_with(o_auth_client_id: nil, o_auth_client_secret: nil,
                   o_auth_token: nil, o_auth_scopes: nil,
                   o_auth_token_provider: nil, o_auth_on_token_update: nil,
                   o_auth_clock_skew: nil)
      o_auth_client_id ||= self.o_auth_client_id
      o_auth_client_secret ||= self.o_auth_client_secret
      o_auth_token ||= self.o_auth_token
      o_auth_scopes ||= self.o_auth_scopes
      o_auth_token_provider ||= self.o_auth_token_provider
      o_auth_on_token_update ||= self.o_auth_on_token_update
      o_auth_clock_skew ||= self.o_auth_clock_skew

      ServerCredentials.new(o_auth_client_id: o_auth_client_id,
                            o_auth_client_secret: o_auth_client_secret,
                            o_auth_token: o_auth_token,
                            o_auth_scopes: o_auth_scopes,
                            o_auth_token_provider: o_auth_token_provider,
                            o_auth_on_token_update: o_auth_on_token_update,
                            o_auth_clock_skew: o_auth_clock_skew)
    end
  end
end
