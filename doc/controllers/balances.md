# Balances

# Balances

---


The *Balances* resource represents your user, prepaid card, and account balances.

With this resource, you can perform the following request:

* `GET`: Retrieve a list of User, Prepaid Card, and Account balances.

For more information, see [Balances](page:resources/balances).

```ruby
balances_controller = client.balances
```

## Class Name

`BalancesController`

## Methods

* [List Account Balances](../../doc/controllers/balances.md#list-account-balances)
* [List User Balances](../../doc/controllers/balances.md#list-user-balances)
* [Retrieve Card Balance](../../doc/controllers/balances.md#retrieve-card-balance)


# List Account Balances

Retrieve a list of bank account [balances](page:resources/balances) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_account_balances(account_token,
                          page,
                          page_size,
                          filter: nil,
                          sort: nil,
                          language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`BalanceListResult`](../../doc/models/balance-list-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = balances_controller.list_account_balances(
  account_token,
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
      "amount": 0,
      "currency": "USD",
      "formattedAmount": "$0.00 USD",
      "token": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a63a7b147860/balances",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "20",
    "pageCount": "0",
    "recordCount": "0",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a63a7b147860/balances?page=1&pageSize=20&language=en-US",
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


# List User Balances

Retrieve a list of user [balances](page:resources/balances) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_user_balances(user_token,
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

[`BalanceListResult`](../../doc/models/balance-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = balances_controller.list_user_balances(
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
      "amount": 0,
      "currency": "USD",
      "formattedAmount": "$0.00 USD",
      "token": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a63a7b147860/balances",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "1",
    "pageSize": "20",
    "pageCount": "0",
    "recordCount": "0",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a63a7b147860/balances?page=1&pageSize=20&language=en-US",
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


# Retrieve Card Balance

Retrieve a [prepaid card](page:resources/prepaid-cards) [balances](page:resources/balances) by destination token that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def retrieve_card_balance(user_token,
                          destination_token,
                          language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`BalanceResult`](../../doc/models/balance-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

language = Languages::ENUS

result = balances_controller.retrieve_card_balance(
  user_token,
  destination_token,
  language: language
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "amount": 0,
  "currency": "USD",
  "formattedAmount": "$0.00 USD",
  "token": "dest-2de9ddbf-2631-4c94-a699-90917f113b24",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-2de9ddbf-2631-4c94-a699-90917f113b24/balances",
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

