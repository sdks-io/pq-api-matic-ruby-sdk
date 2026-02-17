# Transfers

# Transfers

---


The *Transfers* resource describes a transfer quote from or to a user's account via a specified transfer method.

Depending on the program, the transfer of funds can be made to a prepaid card, bank account, or paper check belonging to the user. By default, transfers are queued for immediate processing; however, a future processing date can be specified in the request.

With this resource, you can perform the following requests:

* `POST`: Create a new transfer quote
* `GET`: Retrieve a transfer quote or list of transfer quotes
* `DELETE`: Delete a transfer quote

For more information, see [Transfers](page:resources/transfers).

```ruby
transfers_controller = client.transfers
```

## Class Name

`TransfersController`

## Methods

* [Accept Transfer Quote](../../doc/controllers/transfers.md#accept-transfer-quote)
* [Cancel Transfer Quote](../../doc/controllers/transfers.md#cancel-transfer-quote)
* [Create Transfer Quote](../../doc/controllers/transfers.md#create-transfer-quote)
* [List Transfers](../../doc/controllers/transfers.md#list-transfers)
* [List User Transfers](../../doc/controllers/transfers.md#list-user-transfers)
* [Retrieve Transfer](../../doc/controllers/transfers.md#retrieve-transfer)
* [Retrieve User Transfer](../../doc/controllers/transfers.md#retrieve-user-transfer)


# Accept Transfer Quote

Accept a [transfer](page:resources/transfers) quote.

```ruby
def accept_transfer_quote(transfer_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual transfer transaction, prefixed with `xfer-`.<br><br>**Constraints**: *Pattern*: `^xfer-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`TransferResult`](../../doc/models/transfer-result.md)

## Example Usage

```ruby
transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

result = transfers_controller.accept_transfer_quote(transfer_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2",
  "clientTransferId": "af1d26c4-07d8-4bba-bdf6-104fda46e896",
  "created": "2025-06-24T12:40:53Z",
  "destinationAmount": 14,
  "destinationCurrency": "USD",
  "destinationToken": "dest-80611686-e311-4acd-aeeb-224609a3b12b",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 15.5,
    "transactionAmount": 14,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 14,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 14,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$14.00 USD",
    "destinationFormattedAmount": "$14.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-65ec33d0-4518-41bb-2822-ed58c69e678e",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$14.00 USD",
  "amount": 14,
  "formattedAmount": "$14.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-8526e8fe49e2",
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


# Cancel Transfer Quote

Optional [transfer](page:resources/transfers) quote cancellation that auto-cancels after a period organically expires or when account activity invalidates the quote.

```ruby
def cancel_transfer_quote(transfer_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual transfer transaction, prefixed with `xfer-`.<br><br>**Constraints**: *Pattern*: `^xfer-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`TransferResult`](../../doc/models/transfer-result.md)

## Example Usage

```ruby
transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

result = transfers_controller.cancel_transfer_quote(transfer_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2",
  "clientTransferId": "af1d26c4-07d8-4bba-bdf6-104fda46e896",
  "created": "2025-06-24T12:40:53Z",
  "destinationAmount": 14,
  "destinationCurrency": "USD",
  "destinationToken": "dest-80611686-e311-4acd-aeeb-224609a3b12b",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 15.5,
    "transactionAmount": 14,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 14,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 14,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$14.00 USD",
    "destinationFormattedAmount": "$14.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-65ec33d0-4518-41bb-2822-ed58c69e678e",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$14.00 USD",
  "amount": 14,
  "formattedAmount": "$14.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-8526e8fe49e2",
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


# Create Transfer Quote

Create a new [transfer](page:resources/transfers) quote.

```ruby
def create_transfer_quote(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [GatewayTransferQuote](../../doc/models/gateway-transfer-quote.md) \| [PortalTransferQuote](../../doc/models/portal-transfer-quote.md) \| nil | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`TransferResult`](../../doc/models/transfer-result.md)

## Example Usage

```ruby
body = GatewayTransferQuote.new(
  'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
  'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
  'string',
  'string',
  true,
  'string',
  50,
  Currencies::USD,
  LockSideTypes::SOURCE,
  TransferMethodTypes::IACH
)

result = transfers_controller.create_transfer_quote(body: body)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2",
  "clientTransferId": "af1d26c4-07d8-4bba-bdf6-104fda46e896",
  "created": "2025-06-24T12:40:53Z",
  "destinationAmount": 14,
  "destinationCurrency": "USD",
  "destinationToken": "dest-80611686-e311-4acd-aeeb-224609a3b12b",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 15.5,
    "transactionAmount": 14,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 14,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 14,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$14.00 USD",
    "destinationFormattedAmount": "$14.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-65ec33d0-4518-41bb-2822-ed58c69e678e",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$14.00 USD",
  "amount": 14,
  "formattedAmount": "$14.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-8526e8fe49e2",
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


# List Transfers

Retrieve a list of [transfers](page:resources/transfers) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_transfers(page,
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

[`TransferListResult`](../../doc/models/transfer-list-result.md)

## Example Usage

```ruby
page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = transfers_controller.list_transfers(
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
      "token": "xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
      "clientTransferId": "1066ab05-84d0-453f-a827-1bd3b2ad9e3d",
      "created": "2025-06-23T19:17:22Z",
      "destinationAmount": -14,
      "destinationCurrency": "USD",
      "destinationToken": "dest-80611686-e311-4acd-aeeb-244609a3b12b",
      "fee": {
        "category": "USER",
        "destinationCountry": "USA",
        "destinationCurrency": "USD",
        "distribution": [
          {
            "amount": 1.5,
            "currency": "USD",
            "description": [
              {
                "language": "en-US",
                "translation": "Transfer to a Bank Fee"
              },
              {
                "language": "en-US",
                "translation": "Poplatek za převod do banky"
              },
              {
                "language": "de-DE",
                "translation": "Transfer zu einer Bankgebühr"
              },
              {
                "language": "es-ES",
                "translation": "Coste de la transferencia a un banco"
              },
              {
                "language": "en-US",
                "translation": "Pankkiin siirto -maksu"
              },
              {
                "language": "fr-FR",
                "translation": "Frais de virement vers une banque"
              },
              {
                "language": "it-IT",
                "translation": "Tariffa Trasferimento Bancario"
              },
              {
                "language": "ja-JP",
                "translation": "銀行への送金の手数料"
              },
              {
                "language": "ko-KR",
                "translation": "은행으로 송금 수수료"
              },
              {
                "language": "nl-NL",
                "translation": "Kosten bankoverschrijving"
              },
              {
                "language": "pl-PL",
                "translation": "Opłata za przelew do banku"
              },
              {
                "language": "pt-BR",
                "translation": "Taxa de Transferência para um Banco"
              },
              {
                "language": "ru-RU",
                "translation": "Комиссия за перевод на банковский счет"
              },
              {
                "language": "en-US",
                "translation": "Avgift för överföring till en bank"
              },
              {
                "language": "zh-Hans",
                "translation": "转账到银行手续费"
              },
              {
                "language": "zh-Hant",
                "translation": "轉帳至銀行手續費"
              },
              {
                "language": "fr-CA",
                "translation": "Frais de transfert bancaire"
              },
              {
                "language": "pt-PT",
                "translation": "Taxa de Transferência para um Banco"
              },
              {
                "language": "es-MX",
                "translation": "Transferencia a una Tarifa Bancaria"
              },
              {
                "language": "en-GB",
                "translation": "Transfer to a Bank Fee"
              }
            ],
            "formattedAmount": "$1.50 USD",
            "percentage": 1,
            "responsibility": "USER",
            "responsibilitySource": "SCHEDULE",
            "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
          }
        ],
        "source": "TRANSACTION",
        "totalAmount": -12.5,
        "transactionAmount": -14,
        "type": "BANK_TRANSFER",
        "valueAmount": 1.5,
        "valueType": "STATIC"
      },
      "fxRate": {
        "destinationAmount": -14,
        "destinationCurrency": "USD",
        "rate": 1,
        "sourceAmount": -14,
        "sourceCurrency": "USD",
        "sourceFormattedAmount": "($14.00) USD",
        "destinationFormattedAmount": "($14.00) USD"
      },
      "memo": "Bank transfer - memo",
      "note": "Bank transfer - note",
      "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e",
      "status": "ACCEPTED",
      "receiptToken": "rcpt-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
      "destinationFormattedAmount": "($14.00) USD",
      "amount": -14,
      "formattedAmount": "($14.00) USD",
      "transferLockSide": "SOURCE",
      "transferMethodType": "IACH",
      "deliveryDetails": {
        "minimumDeliveryMinutes": 4320,
        "maximumDeliveryMinutes": 10080
      },
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers/xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "2",
    "pageCount": "1",
    "recordCount": "1",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers?page=1&language=en-US&filter=%27transfertype%27=%27BANK_TRANSFER%27&pageSize=2",
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


# List User Transfers

Retrieve a list of user [transfers](page:resources/transfers) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_user_transfers(user_token,
                        page,
                        page_size,
                        filter: nil,
                        sort: nil,
                        language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`TransferListResult`](../../doc/models/transfer-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = transfers_controller.list_user_transfers(
  user_token,
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
      "token": "xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
      "clientTransferId": "1066ab05-84d0-453f-a827-1bd3b2ad9e3d",
      "created": "2025-06-23T19:17:22Z",
      "destinationAmount": -14,
      "destinationCurrency": "USD",
      "destinationToken": "dest-80611686-e311-4acd-aeeb-244609a3b12b",
      "fee": {
        "category": "USER",
        "destinationCountry": "USA",
        "destinationCurrency": "USD",
        "distribution": [
          {
            "amount": 1.5,
            "currency": "USD",
            "description": [
              {
                "language": "en-US",
                "translation": "Transfer to a Bank Fee"
              },
              {
                "language": "en-US",
                "translation": "Poplatek za převod do banky"
              },
              {
                "language": "de-DE",
                "translation": "Transfer zu einer Bankgebühr"
              },
              {
                "language": "es-ES",
                "translation": "Coste de la transferencia a un banco"
              },
              {
                "language": "en-US",
                "translation": "Pankkiin siirto -maksu"
              },
              {
                "language": "fr-FR",
                "translation": "Frais de virement vers une banque"
              },
              {
                "language": "it-IT",
                "translation": "Tariffa Trasferimento Bancario"
              },
              {
                "language": "ja-JP",
                "translation": "銀行への送金の手数料"
              },
              {
                "language": "ko-KR",
                "translation": "은행으로 송금 수수료"
              },
              {
                "language": "nl-NL",
                "translation": "Kosten bankoverschrijving"
              },
              {
                "language": "pl-PL",
                "translation": "Opłata za przelew do banku"
              },
              {
                "language": "pt-BR",
                "translation": "Taxa de Transferência para um Banco"
              },
              {
                "language": "ru-RU",
                "translation": "Комиссия за перевод на банковский счет"
              },
              {
                "language": "en-US",
                "translation": "Avgift för överföring till en bank"
              },
              {
                "language": "zh-Hans",
                "translation": "转账到银行手续费"
              },
              {
                "language": "zh-Hant",
                "translation": "轉帳至銀行手續費"
              },
              {
                "language": "fr-CA",
                "translation": "Frais de transfert bancaire"
              },
              {
                "language": "pt-PT",
                "translation": "Taxa de Transferência para um Banco"
              },
              {
                "language": "es-MX",
                "translation": "Transferencia a una Tarifa Bancaria"
              },
              {
                "language": "en-GB",
                "translation": "Transfer to a Bank Fee"
              }
            ],
            "formattedAmount": "$1.50 USD",
            "percentage": 1,
            "responsibility": "USER",
            "responsibilitySource": "SCHEDULE",
            "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
          }
        ],
        "source": "TRANSACTION",
        "totalAmount": -12.5,
        "transactionAmount": -14,
        "type": "BANK_TRANSFER",
        "valueAmount": 1.5,
        "valueType": "STATIC"
      },
      "fxRate": {
        "destinationAmount": -14,
        "destinationCurrency": "USD",
        "rate": 1,
        "sourceAmount": -14,
        "sourceCurrency": "USD",
        "sourceFormattedAmount": "($14.00) USD",
        "destinationFormattedAmount": "($14.00) USD"
      },
      "memo": "Bank transfer - memo",
      "note": "Bank transfer - note",
      "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e",
      "status": "ACCEPTED",
      "receiptToken": "rcpt-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
      "destinationFormattedAmount": "($14.00) USD",
      "amount": -14,
      "formattedAmount": "($14.00) USD",
      "transferLockSide": "SOURCE",
      "transferMethodType": "IACH",
      "deliveryDetails": {
        "minimumDeliveryMinutes": 4320,
        "maximumDeliveryMinutes": 10080
      },
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers/xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "2",
    "pageCount": "1",
    "recordCount": "1",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers?page=1&language=en-US&filter=%27transfertype%27=%27BANK_TRANSFER%27&pageSize=2",
      "params": {
        "rel": "self"
      }
    }
  ]
}
```


# Retrieve Transfer

Retrieve details of a specific [transfer](page:resources/transfers) represented by a transfer token.

```ruby
def retrieve_transfer(transfer_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual transfer transaction, prefixed with `xfer-`.<br><br>**Constraints**: *Pattern*: `^xfer-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`TransferResult`](../../doc/models/transfer-result.md)

## Example Usage

```ruby
transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

result = transfers_controller.retrieve_transfer(transfer_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2",
  "clientTransferId": "af1d26c4-07d8-4bba-bdf6-104fda46e896",
  "created": "2025-06-24T12:40:53Z",
  "destinationAmount": 14,
  "destinationCurrency": "USD",
  "destinationToken": "dest-80611686-e311-4acd-aeeb-224609a3b12b",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 15.5,
    "transactionAmount": 14,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 14,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 14,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$14.00 USD",
    "destinationFormattedAmount": "$14.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-65ec33d0-4518-41bb-2822-ed58c69e678e",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$14.00 USD",
  "amount": 14,
  "formattedAmount": "$14.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-8526e8fe49e2",
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


# Retrieve User Transfer

Retrieve a specific user bank [transfer](page:resources/transfers).

```ruby
def retrieve_user_transfer(user_token,
                           transfer_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `transfer_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer, prefixed with `xfer-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^xfer-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`TransferResult`](../../doc/models/transfer-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

transfer_token = 'xfer-bf34989d-0b13-47ee-bd51-b96b0ecbe866'

result = transfers_controller.retrieve_user_transfer(
  user_token,
  transfer_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2",
  "clientTransferId": "af1d26c4-07d8-4bba-bdf6-104fda46e896",
  "created": "2025-06-24T12:40:53Z",
  "destinationAmount": 14,
  "destinationCurrency": "USD",
  "destinationToken": "dest-80611686-e311-4acd-aeeb-224609a3b12b",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-65ec33d0-4518-41bb-8822-ed58c69e678e"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 15.5,
    "transactionAmount": 14,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 14,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 14,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$14.00 USD",
    "destinationFormattedAmount": "$14.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-65ec33d0-4518-41bb-2822-ed58c69e678e",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$14.00 USD",
  "amount": 14,
  "formattedAmount": "$14.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-8526e8fe49e2",
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

