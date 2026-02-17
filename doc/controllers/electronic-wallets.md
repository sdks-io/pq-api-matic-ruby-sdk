# Electronic Wallets

```ruby
electronic_wallets_controller = client.electronic_wallets
```

## Class Name

`ElectronicWalletsController`

## Methods

* [Create Electronic Wallet](../../doc/controllers/electronic-wallets.md#create-electronic-wallet)
* [Delete Electronic Wallet](../../doc/controllers/electronic-wallets.md#delete-electronic-wallet)
* [List Electronic Wallets](../../doc/controllers/electronic-wallets.md#list-electronic-wallets)
* [Retrieve Creation Requirements](../../doc/controllers/electronic-wallets.md#retrieve-creation-requirements)
* [Retrieve Electronic Wallet](../../doc/controllers/electronic-wallets.md#retrieve-electronic-wallet)
* [Update Electronic Wallet](../../doc/controllers/electronic-wallets.md#update-electronic-wallet)


# Create Electronic Wallet

Create a new [electronic wallet](page:resources/electronic-wallets) using a user token.

```ruby
def create_electronic_wallet(user_token,
                             body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateElectronicWallet`](../../doc/models/create-or-update-electronic-wallet.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`ElectronicWalletResult`](../../doc/models/electronic-wallet-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

body = CreateOrUpdateElectronicWallet.new(
  ElectronicWalletTypes::TIGO_MONEY,
  Countries::SV,
  Currencies::USD,
  [
    ElectronicWalletField.new(
      ElectronicWalletFields::ACCOUNT_NUMBER,
      '012345678'
    ),
    ElectronicWalletField.new(
      ElectronicWalletFields::GOVERNMENT_ID,
      '012345678'
    )
  ]
)

result = electronic_wallets_controller.create_electronic_wallet(
  user_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "type": "TIGO_MONEY",
  "electronicWalletCountry": "SV",
  "electronicWalletCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "fields": [
    {
      "key": "ACCOUNT_NUMBER",
      "value": "012345678"
    },
    {
      "key": "GOVERNMENT_ID",
      "value": "012345678"
    }
  ],
  "status": "VERIFIED",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Delete Electronic Wallet

Delete a user [electronic wallet](page:resources/electronic-wallets).

```ruby
def delete_electronic_wallet(user_token,
                             destination_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`OperationResult`](../../doc/models/operation-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

result = electronic_wallets_controller.delete_electronic_wallet(
  user_token,
  destination_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "result": true,
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


# List Electronic Wallets

Retrieve a list of [electronic wallets](page:resources/electronic-wallets) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_electronic_wallets(user_token,
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

[`ElectronicWalletListResult`](../../doc/models/electronic-wallet-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = electronic_wallets_controller.list_electronic_wallets(
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
      "token": "dest-969daa60-c743-4e4f-8609-559874f26d6c",
      "type": "TIGO_MONEY",
      "electronicWalletCountry": "SV",
      "electronicWalletCurrency": "USD",
      "createdOn": "2022-05-20T15:48:54Z",
      "fields": [
        {
          "key": "ACCOUNT_NUMBER",
          "value": "012345678"
        },
        {
          "key": "GOVERNMENT_ID",
          "value": "012345678"
        }
      ],
      "status": "VERIFIED",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-969daa60-c743-4e4f-8609-559874f26d6c",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "5",
    "pageCount": "1",
    "recordCount": "1",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets?page=1&pageSize=5&language=en-US",
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


# Retrieve Creation Requirements

Retrieve requirements for adding a [electronic wallet](page:resources/electronic-wallets) using the parameters provided.

```ruby
def retrieve_creation_requirements(user_token,
                                   electronic_wallet_type: nil,
                                   country: nil,
                                   currency: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `electronic_wallet_type` | [`ElectronicWalletTypes`](../../doc/models/electronic-wallet-types.md) | Query, Optional | Filter results by electronic wallet type. |
| `country` | [`Countries`](../../doc/models/countries.md) | Query, Optional | Filter results by country. |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Query, Optional | Filter results by currency. |

## Requires scope

### server

`readonly`

## Response Type

[`ElectronicWalletRequirementListResult`](../../doc/models/electronic-wallet-requirement-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

electronic_wallet_type = ElectronicWalletTypes::TIGO_MONEY

country = Countries::US

currency = Currencies::USD

result = electronic_wallets_controller.retrieve_creation_requirements(
  user_token,
  electronic_wallet_type: electronic_wallet_type,
  country: country,
  currency: currency
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "payload": [
    {
      "electronicWalletType": "TIGO_MONEY",
      "electronicWalletCountry": "SV",
      "electronicWalletCurrency": "USD",
      "requirements": [
        {
          "requirement": "ACCOUNT_NUMBER",
          "format": {
            "example": "012345678",
            "legend": [
              {
                "key": "012345678",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example Account Number"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio Numero del conto"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "Account Number"
            },
            {
              "language": "it-IT",
              "translation": "Numero del conto"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^[0-9]{8}$"
            }
          ]
        },
        {
          "requirement": "GOVERNMENT_ID",
          "format": {
            "example": "012345678",
            "legend": [
              {
                "key": "012345678",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example Government Id"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio Carta d'Identità"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "Government Id"
            },
            {
              "language": "it-IT",
              "translation": "Carta d'Identità"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^[0-9]{8}$"
            }
          ]
        }
      ],
      "quote": {
        "formattedAmount": "$4.32 USD (USD, en-US), 0,00 â‚¬ EUR (EUR, fr-FR)",
        "amount": 4.32,
        "currency": "USD"
      },
      "links": [
        {
          "params": {
            "rel": "self"
          },
          "href": "string"
        }
      ]
    }
  ],
  "links": [
    {
      "params": {
        "rel": "self"
      },
      "href": "string"
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


# Retrieve Electronic Wallet

Retrieve a single [electronic wallet](page:resources/electronic-wallets) using a destination token.

```ruby
def retrieve_electronic_wallet(user_token,
                               destination_token,
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
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`ElectronicWalletResult`](../../doc/models/electronic-wallet-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = electronic_wallets_controller.retrieve_electronic_wallet(
  user_token,
  destination_token,
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
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "type": "TIGO_MONEY",
  "electronicWalletCountry": "SV",
  "electronicWalletCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "fields": [
    {
      "key": "ACCOUNT_NUMBER",
      "value": "012345678"
    },
    {
      "key": "GOVERNMENT_ID",
      "value": "012345678"
    }
  ],
  "status": "VERIFIED",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Update Electronic Wallet

Update a [electronic wallet](page:resources/electronic-wallets).

```ruby
def update_electronic_wallet(user_token,
                             destination_token,
                             body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateElectronicWallet`](../../doc/models/create-or-update-electronic-wallet.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`ElectronicWalletResult`](../../doc/models/electronic-wallet-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = CreateOrUpdateElectronicWallet.new(
  ElectronicWalletTypes::TIGO_MONEY,
  Countries::SV,
  Currencies::USD,
  [
    ElectronicWalletField.new(
      ElectronicWalletFields::ACCOUNT_NUMBER,
      '012345678'
    ),
    ElectronicWalletField.new(
      ElectronicWalletFields::GOVERNMENT_ID,
      '012345678'
    )
  ]
)

result = electronic_wallets_controller.update_electronic_wallet(
  user_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "type": "TIGO_MONEY",
  "electronicWalletCountry": "SV",
  "electronicWalletCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "fields": [
    {
      "key": "ACCOUNT_NUMBER",
      "value": "012345678"
    },
    {
      "key": "GOVERNMENT_ID",
      "value": "012345678"
    }
  ],
  "status": "VERIFIED",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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

