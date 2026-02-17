# Bank Accounts

```ruby
bank_accounts_controller = client.bank_accounts
```

## Class Name

`BankAccountsController`

## Methods

* [Create Bank Account](../../doc/controllers/bank-accounts.md#create-bank-account)
* [Create Company Bank Account](../../doc/controllers/bank-accounts.md#create-company-bank-account)
* [Delete Bank Account](../../doc/controllers/bank-accounts.md#delete-bank-account)
* [Delete Company Bank Account](../../doc/controllers/bank-accounts.md#delete-company-bank-account)
* [List Bank Accounts](../../doc/controllers/bank-accounts.md#list-bank-accounts)
* [List Company Bank Accounts](../../doc/controllers/bank-accounts.md#list-company-bank-accounts)
* [Retrieve Bank Account](../../doc/controllers/bank-accounts.md#retrieve-bank-account)
* [Retrieve Bank Account Creation Requirements for a Prepaid Card](../../doc/controllers/bank-accounts.md#retrieve-bank-account-creation-requirements-for-a-prepaid-card)
* [Retrieve Company Bank Account](../../doc/controllers/bank-accounts.md#retrieve-company-bank-account)
* [Retrieve Company Bank Account Creation Requirements](../../doc/controllers/bank-accounts.md#retrieve-company-bank-account-creation-requirements)
* [Retrieve Creation Requirements](../../doc/controllers/bank-accounts.md#retrieve-creation-requirements)
* [Update Bank Account](../../doc/controllers/bank-accounts.md#update-bank-account)
* [Update Company Bank Account](../../doc/controllers/bank-accounts.md#update-company-bank-account)


# Create Bank Account

Create a [bank account](page:resources/bank-accounts) using a user token.

```ruby
def create_bank_account(user_token,
                        body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateBankAccount`](../../doc/models/create-or-update-bank-account.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

body = CreateOrUpdateBankAccount.new(
  BankAccountOwnership::BUSINESS,
  Countries::US,
  Currencies::USD,
  'Official USD Testing Bank Account 1',
  [
    BankAccountField.new(
      BankAccountFields::BANK_BBAN,
      '01234567890'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_ACH_ABA,
      '012345678'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_NAME,
      'API V2 USD BANK 1'
    ),
    BankAccountField.new(
      BankAccountFields::BENEFICIARY_NAME,
      'Hazel Mosciski'
    )
  ],
  BankAccountTypes::SAVINGS,
  envrr,
  BankAccountAddress.new(
    nil,
    nil,
    nil,
    envrr
  )
)

result = bank_accounts_controller.create_bank_account(
  user_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Create Company Bank Account

Create a company [bank account](page:resources/bank-accounts) using an account token.

```ruby
def create_company_bank_account(account_token,
                                body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateBankAccount`](../../doc/models/create-or-update-bank-account.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

body = CreateOrUpdateBankAccount.new(
  BankAccountOwnership::BUSINESS,
  Countries::US,
  Currencies::USD,
  'Official USD Testing Bank Account 1',
  [
    BankAccountField.new(
      BankAccountFields::BANK_BBAN,
      '01234567890'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_ACH_ABA,
      '012345678'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_NAME,
      'API V2 USD BANK 1'
    ),
    BankAccountField.new(
      BankAccountFields::BENEFICIARY_NAME,
      'Hazel Mosciski'
    )
  ],
  BankAccountTypes::SAVINGS,
  envrr,
  BankAccountAddress.new(
    nil,
    nil,
    nil,
    envrr
  )
)

result = bank_accounts_controller.create_company_bank_account(
  account_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Delete Bank Account

Delete a user [bank account](page:resources/bank-accounts).

```ruby
def delete_bank_account(user_token,
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

result = bank_accounts_controller.delete_bank_account(
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


# Delete Company Bank Account

Delete a company [bank account](page:resources/bank-accounts).

```ruby
def delete_company_bank_account(account_token,
                                destination_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`OperationResult`](../../doc/models/operation-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

result = bank_accounts_controller.delete_company_bank_account(
  account_token,
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


# List Bank Accounts

Retrieve a list of [bank accounts](page:resources/bank-accounts) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_bank_accounts(user_token,
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

[`BankAccountListResult`](../../doc/models/bank-account-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = bank_accounts_controller.list_bank_accounts(
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
      "bankAccountOwnershipType": "BUSINESS",
      "bankCountry": "US",
      "bankCurrency": "USD",
      "createdOn": "2022-05-20T16:26:25Z",
      "description": "Official USD Testing Bank Account 2",
      "fields": [
        {
          "key": "BANK_BBAN",
          "value": "****7899"
        },
        {
          "key": "BANK_ACH_ABA",
          "value": "****5688"
        },
        {
          "key": "BENEFICIARY_NAME",
          "value": "Harry Grady"
        },
        {
          "key": "BANK_NAME",
          "value": "API V2 USD BANK 2"
        }
      ],
      "status": "VERIFIED",
      "type": "SAVINGS",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-969daa60-c743-4e4f-8609-559874f26d6c",
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
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts?page=1&pageSize=5&language=en-US",
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


# List Company Bank Accounts

Retrieve a list of company [bank accounts](page:resources/bank-accounts) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_company_bank_accounts(account_token,
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

[`BankAccountListResult`](../../doc/models/bank-account-list-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = bank_accounts_controller.list_company_bank_accounts(
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
      "token": "dest-969daa60-c743-4e4f-8609-559874f26d6c",
      "bankAccountOwnershipType": "BUSINESS",
      "bankCountry": "US",
      "bankCurrency": "USD",
      "createdOn": "2022-05-20T16:26:25Z",
      "description": "Official USD Testing Bank Account 2",
      "fields": [
        {
          "key": "BANK_BBAN",
          "value": "****7899"
        },
        {
          "key": "BANK_ACH_ABA",
          "value": "****5688"
        },
        {
          "key": "BENEFICIARY_NAME",
          "value": "Harry Grady"
        },
        {
          "key": "BANK_NAME",
          "value": "API V2 USD BANK 2"
        }
      ],
      "status": "VERIFIED",
      "type": "SAVINGS",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-969daa60-c743-4e4f-8609-559874f26d6c",
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
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts?page=1&pageSize=5&language=en-US",
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


# Retrieve Bank Account

Retrieve a single [bank account](page:resources/bank-accounts) using a destination token.

```ruby
def retrieve_bank_account(user_token,
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

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = bank_accounts_controller.retrieve_bank_account(
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
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Retrieve Bank Account Creation Requirements for a Prepaid Card

Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the pre-paid card as the destination.

```ruby
def retrieve_bank_account_creation_requirements_for_a_prepaid_card(user_token,
                                                                   destination_token,
                                                                   country: nil,
                                                                   currency: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `country` | [`Countries`](../../doc/models/countries.md) | Query, Optional | Filter results by country. |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Query, Optional | Filter results by currency. |

## Requires scope

### server

`readonly`

## Response Type

[`BankAccountRequirementListResult`](../../doc/models/bank-account-requirement-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

country = Countries::US

currency = Currencies::USD

result = bank_accounts_controller.retrieve_bank_account_creation_requirements_for_a_prepaid_card(
  user_token,
  destination_token,
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
      "bankCountry": "IT",
      "bankCurrency": "EUR",
      "requirements": [
        {
          "requirement": "BANK_IBAN",
          "format": {
            "example": "IT43K0310412701000000820420",
            "legend": [
              {
                "key": "IT43K0310412701000000820420",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example IBAN"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio IBAN"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "IBAN"
            },
            {
              "language": "it-IT",
              "translation": "IBAN"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^IT\\\\d{2}[A-Z]\\\\d{10}[0-9A-Z]{12}$"
            }
          ]
        },
        {
          "requirement": "BANK_SWIFT_BIC",
          "format": {
            "example": "01234567890",
            "legend": [
              {
                "key": "01234567890",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example Swift/BIC"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio Swift/BIC"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "Swift/BIC"
            },
            {
              "language": "it-IT",
              "translation": "Swift/BIC"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^[a-z0-9A-Z]{8,11}$"
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


# Retrieve Company Bank Account

Retrieve a single company [bank account](page:resources/bank-accounts) using a destination token.

```ruby
def retrieve_company_bank_account(account_token,
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
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
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

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = bank_accounts_controller.retrieve_company_bank_account(
  account_token,
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
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Retrieve Company Bank Account Creation Requirements

Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the parameters provided.

```ruby
def retrieve_company_bank_account_creation_requirements(account_token,
                                                        country: nil,
                                                        currency: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `country` | [`Countries`](../../doc/models/countries.md) | Query, Optional | Filter results by country. |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Query, Optional | Filter results by currency. |

## Requires scope

### server

`readonly`

## Response Type

[`BankAccountRequirementListResult`](../../doc/models/bank-account-requirement-list-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

country = Countries::US

currency = Currencies::USD

result = bank_accounts_controller.retrieve_company_bank_account_creation_requirements(
  account_token,
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
      "bankCountry": "IT",
      "bankCurrency": "EUR",
      "requirements": [
        {
          "requirement": "BANK_IBAN",
          "format": {
            "example": "IT43K0310412701000000820420",
            "legend": [
              {
                "key": "IT43K0310412701000000820420",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example IBAN"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio IBAN"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "IBAN"
            },
            {
              "language": "it-IT",
              "translation": "IBAN"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^IT\\\\d{2}[A-Z]\\\\d{10}[0-9A-Z]{12}$"
            }
          ]
        },
        {
          "requirement": "BANK_SWIFT_BIC",
          "format": {
            "example": "01234567890",
            "legend": [
              {
                "key": "01234567890",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example Swift/BIC"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio Swift/BIC"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "Swift/BIC"
            },
            {
              "language": "it-IT",
              "translation": "Swift/BIC"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^[a-z0-9A-Z]{8,11}$"
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


# Retrieve Creation Requirements

Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the parameters provided.

```ruby
def retrieve_creation_requirements(user_token,
                                   country: nil,
                                   currency: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `country` | [`Countries`](../../doc/models/countries.md) | Query, Optional | Filter results by country. |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Query, Optional | Filter results by currency. |

## Requires scope

### server

`readonly`

## Response Type

[`BankAccountRequirementListResult`](../../doc/models/bank-account-requirement-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

country = Countries::US

currency = Currencies::USD

result = bank_accounts_controller.retrieve_creation_requirements(
  user_token,
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
      "bankCountry": "IT",
      "bankCurrency": "EUR",
      "requirements": [
        {
          "requirement": "BANK_IBAN",
          "format": {
            "example": "IT43K0310412701000000820420",
            "legend": [
              {
                "key": "IT43K0310412701000000820420",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example IBAN"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio IBAN"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "IBAN"
            },
            {
              "language": "it-IT",
              "translation": "IBAN"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^IT\\\\d{2}[A-Z]\\\\d{10}[0-9A-Z]{12}$"
            }
          ]
        },
        {
          "requirement": "BANK_SWIFT_BIC",
          "format": {
            "example": "01234567890",
            "legend": [
              {
                "key": "01234567890",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "Example Swift/BIC"
                  },
                  {
                    "language": "it-IT",
                    "translation": "Esempio Swift/BIC"
                  }
                ]
              }
            ]
          },
          "description": [
            {
              "language": "en-US",
              "translation": "Swift/BIC"
            },
            {
              "language": "it-IT",
              "translation": "Swift/BIC"
            }
          ],
          "validators": [
            {
              "validatorType": "REGEX",
              "expression": "^[a-z0-9A-Z]{8,11}$"
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


# Update Bank Account

Update a [bank account](page:resources/bank-accounts).

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_bank_account(user_token,
                        destination_token,
                        body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateBankAccount`](../../doc/models/create-or-update-bank-account.md) | Body, Optional | - |

## Response Type

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = CreateOrUpdateBankAccount.new(
  BankAccountOwnership::BUSINESS,
  Countries::US,
  Currencies::USD,
  'Official USD Testing Bank Account 1',
  [
    BankAccountField.new(
      BankAccountFields::BANK_BBAN,
      '01234567890'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_ACH_ABA,
      '012345678'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_NAME,
      'API V2 USD BANK 1'
    ),
    BankAccountField.new(
      BankAccountFields::BENEFICIARY_NAME,
      'Hazel Mosciski'
    )
  ],
  BankAccountTypes::SAVINGS,
  envrr,
  BankAccountAddress.new(
    nil,
    nil,
    nil,
    envrr
  )
)

result = bank_accounts_controller.update_bank_account(
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
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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


# Update Company Bank Account

Update a company [bank account](page:resources/bank-accounts).

```ruby
def update_company_bank_account(account_token,
                                destination_token,
                                body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_token` | `String` | Template, Required | Auto-generated unique identifier representing a company account, prefixed with `acct-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^acct-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateOrUpdateBankAccount`](../../doc/models/create-or-update-bank-account.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`BankAccountResult`](../../doc/models/bank-account-result.md)

## Example Usage

```ruby
account_token = 'acct-b3f0570a-6586-4e00-8d6e-8a2bf93cfae4'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = CreateOrUpdateBankAccount.new(
  BankAccountOwnership::BUSINESS,
  Countries::US,
  Currencies::USD,
  'Official USD Testing Bank Account 1',
  [
    BankAccountField.new(
      BankAccountFields::BANK_BBAN,
      '01234567890'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_ACH_ABA,
      '012345678'
    ),
    BankAccountField.new(
      BankAccountFields::BANK_NAME,
      'API V2 USD BANK 1'
    ),
    BankAccountField.new(
      BankAccountFields::BENEFICIARY_NAME,
      'Hazel Mosciski'
    )
  ],
  BankAccountTypes::SAVINGS,
  envrr,
  BankAccountAddress.new(
    nil,
    nil,
    nil,
    envrr
  )
)

result = bank_accounts_controller.update_company_bank_account(
  account_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
  "bankAccountOwnershipType": "BUSINESS",
  "bankCountry": "US",
  "bankCurrency": "USD",
  "createdOn": "2022-05-20T15:48:54Z",
  "description": "Official USD Testing Bank Account 1",
  "fields": [
    {
      "key": "BANK_BBAN",
      "value": "****7890"
    },
    {
      "key": "BANK_ACH_ABA",
      "value": "****5678"
    },
    {
      "key": "BENEFICIARY_NAME",
      "value": "Dennis Bruen"
    },
    {
      "key": "BANK_NAME",
      "value": "API V2 USD BANK 1"
    }
  ],
  "status": "VERIFIED",
  "type": "SAVINGS",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4",
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

