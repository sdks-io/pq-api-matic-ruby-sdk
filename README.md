
# Getting Started with PQ API v2

## Introduction

PayQuicker offers a secure and instant payout platform that delivers payment to a payee-owned and insured bank account linked to a debit card, similar to a standard checking account.

As soon as the payment is made, funds are available in the insured account and available to spend instantly online through a virtual card, at retail with a plastic prepaid debit card, or by loading the card to a mobile wallet.

PayQuicker provides a RESTful API that allows authorized clients to send and receive payments, debit user's accounts for spendback, retrieve user account balance, retrieve user reports, and retrieve transaction reports.

## Install the Package

Install the gem from the command line:

```bash
gem install pq-api-matic-sdk -v 1.0.2
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'pq-api-matic-sdk', '1.0.2'
```

For additional gem details, see the [RubyGems page for the pq-api-matic-sdk gem](https://rubygems.org/gems/pq-api-matic-sdk/versions/1.0.2).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'pay_quicker_sdk'
include PayQuickerSdk
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/pay_quicker_sdk
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| x_my_pay_quicker_version | `String` | Date-based API Version specified in the header *required* on all calls.<br>*Default*: `'2026.02.01'` |
| sandbox_instance | `SandboxInstance` | Sandbox Environments<br>*Default*: `SandboxInstance::SANDBOX` |
| uat_instance | `UatInstance` | UAT Environments<br>*Default*: `UatInstance::UAT1` |
| environment | [`Environment`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/README.md#environments) | The API environment. <br> **Default: `Environment.SANDBOX`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/logging-configuration.md) | The SDK logging configuration for API calls |
| server_credentials | [`ServerCredentials`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| clientside_credentials | [`ClientsideCredentials`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

### Code-Based Client Initialization

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

### Environment-Based Client Initialization

```ruby
require 'pay_quicker_sdk'
include PayQuickerSdk

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/environment-based-client-initialization.md) section for details.

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| PRODUCTION | Production |
| SANDBOX | **Default** Sandbox is used for both sandbox testing and customer UAT. |
| UAT | UAT is used for both sandbox testing and customer UAT. |
| DEVELOPMENT | Development is used for local development testing. |

## Authorization

This API uses the following authentication schemes.

* [`server (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/auth/oauth-2-client-credentials-grant.md)
* [`clientside (OAuth 2 Bearer token)`](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/auth/oauth-2-bearer-token.md)

## List of APIs

* [Agreements](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/agreements.md)
* [Balances](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/balances.md)
* [Bank Accounts](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/bank-accounts.md)
* [Client Side](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/client-side.md)
* [Compliance](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/compliance.md)
* [Documents](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/documents.md)
* [Electronic Wallets](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/electronic-wallets.md)
* [Events](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/events.md)
* [Invitations](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/invitations.md)
* [Jobs](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/jobs.md)
* [Payments](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/payments.md)
* [Prepaid Cards](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/prepaid-cards.md)
* [Program](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/program.md)
* [Receipts](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/receipts.md)
* [Spendback](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/spendback.md)
* [Spendback Refunds](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/spendback-refunds.md)
* [Statements](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/statements.md)
* [Transfers](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/transfers.md)
* [Users](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/users.md)
* [Webhooks](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/controllers/webhooks.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/environment-based-client-initialization.md)
* [AbstractLogger](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/abstract-logger.md)
* [LoggingConfiguration](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/logging-configuration.md)
* [RequestLoggingConfiguration](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/sdks-io/pq-api-matic-ruby-sdk/tree/1.0.2/doc/date-time-helper.md)

