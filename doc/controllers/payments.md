# Payments

# Payments

---


The *Payments* resource allows you to list, retrieve, and retract payments, as well as create, accept and cancel payment quotes.

A payment is a type of transfer that goes from the funding account to the user's wallet and the only transfer type to support the `autoAccept` property so that the transfer is performed synchronously as opposed to other transfer types that must first be quoted and then accepted in a seperate API call. By default, payments are queued for immediate processing; however, a future processing date can be specified in the request.

With this resource, you can perform the following requests:

* `POST`: Create a new payment quote
* `POST`: Accept a payment quote via the payment token
* `PUT`: Retract a payment quote via the payment token
* `GET`: Retrieve a payment quote or list of payment quotes
* `DELETE`: Cancel a payment quote via the payment token

For more information, see [Payments](page:resources/payments).

```ruby
payments_controller = client.payments
```

## Class Name

`PaymentsController`

## Methods

* [Accept Payment Quote](../../doc/controllers/payments.md#accept-payment-quote)
* [Cancel Payment Quote](../../doc/controllers/payments.md#cancel-payment-quote)
* [Create Payment Quote](../../doc/controllers/payments.md#create-payment-quote)
* [List Payments](../../doc/controllers/payments.md#list-payments)
* [Retract Payment](../../doc/controllers/payments.md#retract-payment)
* [Retrieve Payment](../../doc/controllers/payments.md#retrieve-payment)


# Accept Payment Quote

Accept an open [payment](page:resources/payments) quote.

```ruby
def accept_payment_quote(payment_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual payment transaction and quote, prefixed with `pmnt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^pmnt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`PaymentResult`](../../doc/models/payment-result.md)

## Example Usage

```ruby
payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

result = payments_controller.accept_payment_quote(payment_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
  "amount": -1500,
  "autoAcceptQuote": false,
  "clientPaymentId": "de6269af-e3b0-4d4b-801d-367776b32f63",
  "created": "2022-04-26T15:16:18Z",
  "currency": "USD",
  "destinationToken": "dest-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "memo": "Payment 1 Memo",
  "note": "Payment 1 Note",
  "purpose": "INCOME",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Cancel Payment Quote

Cancel an open [payment](page:resources/payments) quote.

```ruby
def cancel_payment_quote(payment_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual payment transaction and quote, prefixed with `pmnt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^pmnt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`PaymentResult`](../../doc/models/payment-result.md)

## Example Usage

```ruby
payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

result = payments_controller.cancel_payment_quote(payment_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
  "amount": -1500,
  "autoAcceptQuote": false,
  "clientPaymentId": "de6269af-e3b0-4d4b-801d-367776b32f63",
  "created": "2022-04-26T15:16:18Z",
  "currency": "USD",
  "destinationToken": "dest-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "memo": "Payment 1 Memo",
  "note": "Payment 1 Note",
  "purpose": "INCOME",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Create Payment Quote

Create a [payment](page:resources/payments) quote.

```ruby
def create_payment_quote(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [Gateway Payment Quote](../../doc/models/gateway-payment-quote.md) \| [PortalPaymentQuote](../../doc/models/portal-payment-quote.md) \| nil | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`PaymentResult`](../../doc/models/payment-result.md)

## Example Usage

```ruby
body = GatewayPaymentQuote.new(
  1.02,
  Currencies::USD,
  'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
  'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
  'string',
  'string',
  PaymentPurposes::BONUS,
  'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e',
  true,
  DateTimeHelper.from_rfc3339('2022-04-26T15:16:18Z'),
  DateTimeHelper.from_rfc3339('2019-08-24T14:15:22Z')
)

result = payments_controller.create_payment_quote(body: body)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
  "amount": -1500,
  "autoAcceptQuote": false,
  "clientPaymentId": "de6269af-e3b0-4d4b-801d-367776b32f63",
  "created": "2022-04-26T15:16:18Z",
  "currency": "USD",
  "destinationToken": "dest-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "memo": "Payment 1 Memo",
  "note": "Payment 1 Note",
  "purpose": "INCOME",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# List Payments

Retrieve a list of [payments](page:resources/payments) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_payments(page,
                  page_size,
                  filter: nil,
                  sort: nil,
                  language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`PaymentListResult`](../../doc/models/payment-list-result.md)

## Example Usage

```ruby
page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = payments_controller.list_payments(
  page,
  page_size,
  filter: filter,
  sort: sort,
  language: language
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "payload": [
    {
      "token": "pmnt-9ed0cd25-aaf5-4683-9a29-b02a9dc40400",
      "amount": -1500,
      "autoAcceptQuote": false,
      "clientPaymentId": "3cdb0e3f-666a-4a32-86e3-676c8593262a",
      "created": "2021-06-08T19:25:13Z",
      "currency": "USD",
      "destinationToken": "user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2",
      "memo": "Payment 1 Memo",
      "note": "Payment 1 Note",
      "purpose": "INCOME",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "status": "ACCEPTED",
      "receiptToken": "rcpt-c05ac500-c5b0-4870-8e66-1004eee26e4b",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-9ed0cd25-aaf5-4683-9a29-b02a9dc40400",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "pmnt-5cd70578-fabd-4bed-8e60-af69addb21a1",
      "amount": 120,
      "autoAcceptQuote": false,
      "clientPaymentId": "6739f368-fa91-46d3-a221-5cd0d75be85a",
      "created": "2021-06-08T19:26:04Z",
      "currency": "USD",
      "destinationToken": "user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2",
      "memo": "Payment 1 Memo",
      "note": "Payment 1 Note",
      "purpose": "INCOME",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "status": "CANCELLED",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-5cd70578-fabd-4bed-8e60-af69addb21a1",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "pmnt-cb279676-6ecf-46e5-b5c8-96f0b6b9ae59",
      "amount": -50,
      "autoAcceptQuote": true,
      "clientPaymentId": "9422dab5-2ea8-47af-8d25-a10aef6efa50",
      "created": "2021-06-08T19:26:26Z",
      "currency": "USD",
      "destinationToken": "user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2",
      "memo": "Payment 1 Memo",
      "note": "Payment 1 Note",
      "purpose": "INCOME",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "status": "ACCEPTED",
      "receiptToken": "rcpt-b1d53179-dd25-4f53-b9ae-d3f23832b7a8",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-cb279676-6ecf-46e5-b5c8-96f0b6b9ae59",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "3",
    "pageCount": "99",
    "recordCount": "296",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments?page=1&pageSize=3&language=en-US",
      "params": {
        "rel": "self"
      }
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Retract Payment

Perform a [payment](page:resources/payments) retraction for the full payment amount.

```ruby
def retract_payment(payment_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual payment transaction and quote, prefixed with `pmnt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^pmnt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`PaymentResult`](../../doc/models/payment-result.md)

## Example Usage

```ruby
payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

result = payments_controller.retract_payment(payment_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
  "amount": -1500,
  "autoAcceptQuote": false,
  "clientPaymentId": "de6269af-e3b0-4d4b-801d-367776b32f63",
  "created": "2022-04-26T15:16:18Z",
  "currency": "USD",
  "destinationToken": "dest-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "memo": "Payment 1 Memo",
  "note": "Payment 1 Note",
  "purpose": "INCOME",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Retrieve Payment

Retrieve a single [payment](page:resources/payments).

```ruby
def retrieve_payment(payment_token,
                     filter: nil,
                     language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual payment transaction and quote, prefixed with `pmnt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^pmnt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`PaymentResult`](../../doc/models/payment-result.md)

## Example Usage

```ruby
payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

filter = 'string'

language = Languages::ENUS

result = payments_controller.retrieve_payment(
  payment_token,
  filter: filter,
  language: language
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
  "amount": -1500,
  "autoAcceptQuote": false,
  "clientPaymentId": "de6269af-e3b0-4d4b-801d-367776b32f63",
  "created": "2022-04-26T15:16:18Z",
  "currency": "USD",
  "destinationToken": "dest-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "memo": "Payment 1 Memo",
  "note": "Payment 1 Note",
  "purpose": "INCOME",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |

