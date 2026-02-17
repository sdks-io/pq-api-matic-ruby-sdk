# Prepaid Cards

```ruby
prepaid_cards_controller = client.prepaid_cards
```

## Class Name

`PrepaidCardsController`

## Methods

* [List Card Authorizations](../../doc/controllers/prepaid-cards.md#list-card-authorizations)
* [List Prepaid Cards](../../doc/controllers/prepaid-cards.md#list-prepaid-cards)
* [Order Prepaid Card](../../doc/controllers/prepaid-cards.md#order-prepaid-card)
* [Replace Prepaid Card](../../doc/controllers/prepaid-cards.md#replace-prepaid-card)
* [Retrieve Prepaid Card](../../doc/controllers/prepaid-cards.md#retrieve-prepaid-card)
* [Update Prepaid Card](../../doc/controllers/prepaid-cards.md#update-prepaid-card)


# List Card Authorizations

TODO

```ruby
def list_card_authorizations(user_token,
                             destination_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`AuthorizationListResult`](../../doc/models/authorization-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

result = prepaid_cards_controller.list_card_authorizations(
  user_token,
  destination_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "payload": [
    {
      "type": "UNSETTLED_AUTHORIZATION",
      "createdOn": "2022-05-04T13:22:53Z",
      "sign": "DEBIT",
      "sourceToken": "dest-8e35fc1b-82f4-4bf5-93d1-27f71a192bc2",
      "amount": -35,
      "currency": "USD",
      "status": "UNSETTLED",
      "descriptions": [
        {
          "language": "en-US",
          "translation": "Completed Bank Transfer Request"
        }
      ],
      "authDate": "2022-05-04T13:22:53Z",
      "reference": "CC008AB44895"
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "100",
    "pageCount": "0",
    "recordCount": "0",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-cf6244d7-f6b8-4625-906a-9f21fc8c774b/prepaid-cards/dest-8e35fc1b-82f4-4bf5-93d1-27f71a192bc2/authorizations",
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


# List Prepaid Cards

Retrieve a list of [prepaid cards](page:resources/prepaid-cards) by user token that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_prepaid_cards(user_token,
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

[`PrepaidCardListResult`](../../doc/models/prepaid-card-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = prepaid_cards_controller.list_prepaid_cards(
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
      "token": "dest-b61bc870-8ab8-4870-a209-6398b60269d5",
      "cardNetwork": "VISA",
      "cardNumber": "483318******3940",
      "cardPackage": "712940",
      "country": "US",
      "createdOn": "2022-04-20T18:43:15Z",
      "currency": "USD",
      "cvv": "***",
      "expires": "04/2025",
      "status": "PENDING_ACTIVATION",
      "bankInDetails": [
        {
          "key": "BANK_ACH_ABA",
          "value": "026014892"
        },
        {
          "key": "BANK_BBAN",
          "value": "8037390305203"
        }
      ],
      "capabilities": [
        "BANK_IN",
        "SET_PIN",
        "APPLEPAY",
        "GOOGLEPAY",
        "SAMSUNGPAY"
      ],
      "userToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "dest-9a8f1dc9-5e59-4ce5-a919-fc586d85d6e5",
      "cardNetwork": "VISA",
      "cardNumber": "483318******4628",
      "cardPackage": "712940",
      "country": "US",
      "createdOn": "2022-04-20T18:42:47Z",
      "currency": "USD",
      "cvv": "***",
      "expires": "06/2025",
      "status": "CLOSED_LOST_STOLEN_DAMAGED",
      "capabilities": [
        "BANK_IN",
        "SET_PIN",
        "APPLEPAY",
        "GOOGLEPAY",
        "SAMSUNGPAY"
      ],
      "userToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-9a8f1dc9-5e59-4ce5-a919-fc586d85d6e5",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "dest-d9c6edab-ddec-4941-b980-f33cfe2f9f6b",
      "cardNetwork": "VISA",
      "cardNumber": "483318******1805",
      "cardPackage": "712940",
      "country": "US",
      "createdOn": "2022-04-20T18:36:16Z",
      "currency": "USD",
      "cvv": "***",
      "expires": "10/2025",
      "status": "CLOSED_LOST_STOLEN_DAMAGED",
      "capabilities": [
        "BANK_IN",
        "SET_PIN",
        "APPLEPAY",
        "GOOGLEPAY",
        "SAMSUNGPAY"
      ],
      "userToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-d9c6edab-ddec-4941-b980-f33cfe2f9f6b",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "100",
    "pageCount": "1",
    "recordCount": "3",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards",
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


# Order Prepaid Card

Order a [prepaid card](page:resources/prepaid-cards) for the user by specifying a cardPackage.

Assign a prepaid card to a user when a program token and card reference number are supplied.

```ruby
def order_prepaid_card(user_token,
                       body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`OrderPrepaidCard`](../../doc/models/order-prepaid-card.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`PrepaidCardResult`](../../doc/models/prepaid-card-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

body = OrderPrepaidCard.new(
  '712940',
  'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'
)

result = prepaid_cards_controller.order_prepaid_card(
  user_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
  "cardNetwork": "VISA",
  "cardNumber": "483318******2127",
  "cardPackage": "712940",
  "country": "US",
  "createdOn": "2022-05-06T18:14:52Z",
  "currency": "USD",
  "cvv": "***",
  "expires": "06/2025",
  "status": "PENDING_ACTIVATION",
  "bankInDetails": [
    {
      "key": "BANK_ACH_ABA",
      "value": "026014892"
    },
    {
      "key": "BANK_BBAN",
      "value": "8037390853101"
    }
  ],
  "capabilities": [
    "BANK_IN",
    "SET_PIN",
    "APPLEPAY",
    "GOOGLEPAY",
    "SAMSUNGPAY"
  ],
  "userToken": "user-ae92315b-6190-4e56-bdf5-c0189ac420a1",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
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


# Replace Prepaid Card

Replace a [prepaid card](page:resources/prepaid-cards) by destination token.

```ruby
def replace_prepaid_card(user_token,
                         destination_token,
                         body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`ReplacePrepaidCard`](../../doc/models/replace-prepaid-card.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`PrepaidCardResult`](../../doc/models/prepaid-card-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = ReplacePrepaidCard.new(
  '23654',
  PrepaidCardReplacementReasons::LOST
)

result = prepaid_cards_controller.replace_prepaid_card(
  user_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
  "cardNetwork": "VISA",
  "cardNumber": "483318******2127",
  "cardPackage": "712940",
  "country": "US",
  "createdOn": "2022-05-06T18:14:52Z",
  "currency": "USD",
  "cvv": "***",
  "expires": "06/2025",
  "status": "PENDING_ACTIVATION",
  "bankInDetails": [
    {
      "key": "BANK_ACH_ABA",
      "value": "026014892"
    },
    {
      "key": "BANK_BBAN",
      "value": "8037390853101"
    }
  ],
  "capabilities": [
    "BANK_IN",
    "SET_PIN",
    "APPLEPAY",
    "GOOGLEPAY",
    "SAMSUNGPAY"
  ],
  "userToken": "user-ae92315b-6190-4e56-bdf5-c0189ac420a1",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
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


# Retrieve Prepaid Card

Retrieve [prepaid card](page:resources/prepaid-cards) details by destination token.

```ruby
def retrieve_prepaid_card(user_token,
                          destination_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`PrepaidCardResult`](../../doc/models/prepaid-card-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

result = prepaid_cards_controller.retrieve_prepaid_card(
  user_token,
  destination_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
  "cardNetwork": "VISA",
  "cardNumber": "483318******2127",
  "cardPackage": "712940",
  "country": "US",
  "createdOn": "2022-05-06T18:14:52Z",
  "currency": "USD",
  "cvv": "***",
  "expires": "06/2025",
  "status": "PENDING_ACTIVATION",
  "bankInDetails": [
    {
      "key": "BANK_ACH_ABA",
      "value": "026014892"
    },
    {
      "key": "BANK_BBAN",
      "value": "8037390853101"
    }
  ],
  "capabilities": [
    "BANK_IN",
    "SET_PIN",
    "APPLEPAY",
    "GOOGLEPAY",
    "SAMSUNGPAY"
  ],
  "userToken": "user-ae92315b-6190-4e56-bdf5-c0189ac420a1",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
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


# Update Prepaid Card

Partial [prepaid card](page:resources/prepaid-cards) update.

```ruby
def update_prepaid_card(user_token,
                        destination_token,
                        body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`UpdatePrepaidCard`](../../doc/models/update-prepaid-card.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`PrepaidCardResult`](../../doc/models/prepaid-card-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = UpdatePrepaidCard.new(
  '',
  PrepaidCardStatuses::QUEUED
)

result = prepaid_cards_controller.update_prepaid_card(
  user_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
  "cardNetwork": "VISA",
  "cardNumber": "483318******2127",
  "cardPackage": "712940",
  "country": "US",
  "createdOn": "2022-05-06T18:14:52Z",
  "currency": "USD",
  "cvv": "***",
  "expires": "06/2025",
  "status": "PENDING_ACTIVATION",
  "bankInDetails": [
    {
      "key": "BANK_ACH_ABA",
      "value": "026014892"
    },
    {
      "key": "BANK_BBAN",
      "value": "8037390853101"
    }
  ],
  "capabilities": [
    "BANK_IN",
    "SET_PIN",
    "APPLEPAY",
    "GOOGLEPAY",
    "SAMSUNGPAY"
  ],
  "userToken": "user-ae92315b-6190-4e56-bdf5-c0189ac420a1",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-8722-f486bdd5cd74",
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

