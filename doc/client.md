
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| x_my_pay_quicker_version | `String` | Date-based API Version specified in the header *required* on all calls.<br>*Default*: `'2026.02.01'` |
| sandbox_instance | `SandboxInstance` | Sandbox Environments<br>*Default*: `SandboxInstance::SANDBOX` |
| uat_instance | `UatInstance` | UAT Environments<br>*Default*: `UatInstance::UAT1` |
| environment | [`Environment`](../README.md#environments) | The API environment. <br> **Default: `Environment.SANDBOX`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](../doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](../doc/logging-configuration.md) | The SDK logging configuration for API calls |
| server_credentials | [`ServerCredentials`](auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| clientside_credentials | [`ClientsideCredentials`](auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

## Code-Based Client Initialization

```ruby
require 'pay_quicker_sdk'
include PayQuickerSdk

client = Client.new(
  x_my_pay_quicker_version: '2026.02.01',
  server_credentials: ServerCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_scopes: [
      OAuthScopeServer::READONLY,
      OAuthScopeServer::MODIFY
    ]
  ),
  clientside_credentials: ClientsideCredentials.new(
    access_token: 'AccessToken'
  ),
  environment: Environment::SANDBOX,
  sandbox_instance: SandboxInstance::SANDBOX,
  uat_instance: UatInstance::UAT1,
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

## Environment-Based Client Initialization

```ruby
require 'pay_quicker_sdk'
include PayQuickerSdk

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](../doc/environment-based-client-initialization.md) section for details.

## PQ API v2 Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| agreements | Gets AgreementsController |
| balances | Gets BalancesController |
| bank_accounts | Gets BankAccountsController |
| client_side | Gets ClientSideController |
| compliance | Gets ComplianceController |
| documents | Gets DocumentsController |
| electronic_wallets | Gets ElectronicWalletsController |
| events | Gets EventsController |
| payments | Gets PaymentsController |
| prepaid_cards | Gets PrepaidCardsController |
| program | Gets ProgramController |
| receipts | Gets ReceiptsController |
| spendback | Gets SpendbackController |
| spendback_refunds | Gets SpendbackRefundsController |
| statements | Gets StatementsController |
| transfers | Gets TransfersController |
| users | Gets UsersController |
| webhooks | Gets WebhooksController |
| jobs | Gets JobsController |
| invitations | Gets InvitationsController |
| o_auth_authorization | Gets OAuthAuthorizationController |

