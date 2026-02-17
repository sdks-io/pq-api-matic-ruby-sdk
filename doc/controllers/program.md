# Program

# Program

---


The *Program* resource allows you to list and retrieve program configurations and program agreements.

With this resource, you can perform the following request:

* `GET`: Retrieve a single program or list of programs.
* `POST`: Accept program agreements

For more information, see [Programs](page:resources/programs).

```ruby
program_controller = client.program
```

## Class Name

`ProgramController`

## Methods

* [List Programs](../../doc/controllers/program.md#list-programs)
* [Retrieve Program](../../doc/controllers/program.md#retrieve-program)


# List Programs

Retrieve a list of [programs](page:resources/programs) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_programs(page,
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

[`ProgramListResult`](../../doc/models/program-list-result.md)

## Example Usage

```ruby
page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = program_controller.list_programs(
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
      "token": "prog-0146a716-4055-2598-ce14-df5ece519a98",
      "currency": "USD",
      "bank": "PATHWARD",
      "electricWallets": [
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "SV",
          "electronicWalletCurrency": "USD"
        },
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "GT",
          "electronicWalletCurrency": "GTQ"
        },
        {
          "type": "AIRTEL_MONEY",
          "electronicWalletCountry": "TZ",
          "electronicWalletCurrency": "TZS"
        },
        {
          "type": "MCASH",
          "electronicWalletCountry": "LK",
          "electronicWalletCurrency": "LKR"
        }
      ],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-0146a716-4055-2598-ce14-df5ece519a98",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-dbfe1489-f3ba-3f5a-6904-9b9ad91ceaf6",
      "currency": "MXN",
      "bank": "PATHWARD",
      "electricWallets": [],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-dbfe1489-f3ba-3f5a-6904-9b9ad91ceaf6",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-8a9e37bf-d9a9-a40a-96c4-e286d1fa8fc5",
      "currency": "USD",
      "bank": "PATHWARD",
      "electricWallets": [
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "SV",
          "electronicWalletCurrency": "USD"
        },
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "GT",
          "electronicWalletCurrency": "GTQ"
        },
        {
          "type": "AIRTEL_MONEY",
          "electronicWalletCountry": "TZ",
          "electronicWalletCurrency": "TZS"
        },
        {
          "type": "MCASH",
          "electronicWalletCountry": "LK",
          "electronicWalletCurrency": "LKR"
        }
      ],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-8a9e37bf-d9a9-a40a-96c4-e286d1fa8fc5",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-76f58bb0-c8ae-d0fa-d1e4-15143ffb53fa",
      "currency": "EUR",
      "bank": "PPS",
      "electricWallets": [],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-76f58bb0-c8ae-d0fa-d1e4-15143ffb53fa",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-bbde39a9-04ca-1c0a-5d74-758a4ad47b84",
      "currency": "GBP",
      "bank": "PPS",
      "electricWallets": [],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-bbde39a9-04ca-1c0a-5d74-758a4ad47b84",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-8136128b-3f5b-2f69-15a4-f25592ebce51",
      "currency": "MXN",
      "bank": "PATHWARD",
      "electricWallets": [],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-8136128b-3f5b-2f69-15a4-f25592ebce51",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-42469a3e-15c8-11f8-02a4-1053f176700e",
      "currency": "EUR",
      "bank": "PATHWARD",
      "electricWallets": [
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "SV",
          "electronicWalletCurrency": "USD"
        },
        {
          "type": "TIGO_MONEY",
          "electronicWalletCountry": "GT",
          "electronicWalletCurrency": "GTQ"
        },
        {
          "type": "AIRTEL_MONEY",
          "electronicWalletCountry": "TZ",
          "electronicWalletCurrency": "TZS"
        },
        {
          "type": "MCASH",
          "electronicWalletCountry": "LK",
          "electronicWalletCurrency": "LKR"
        }
      ],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-42469a3e-15c8-11f8-02a4-1053f176700e",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-f8725c56-b289-8f4b-1f94-cd27f2963cbf",
      "currency": "HKD",
      "bank": "PATHWARD",
      "electricWallets": [],
      "type": "COMMERCIAL",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-f8725c56-b289-8f4b-1f94-cd27f2963cbf",
          "params": {
            "rel": "self"
          }
        }
      ]
    },
    {
      "token": "prog-95753dc7-0b4a-65a9-7bd4-6504b6774cb9",
      "currency": "USD",
      "bank": "MCB",
      "electricWallets": [],
      "type": "CONSUMER_GPR",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-95753dc7-0b4a-65a9-7bd4-6504b6774cb9",
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
    "pageCount": "0",
    "recordCount": "0",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/programs",
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


# Retrieve Program

Retrieve a single [program](page:resources/programs) by its program token.

```ruby
def retrieve_program(program_token,
                     language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `program_token` | `String` | Template, Required | Auto-generated unique identifier representing a program, prefixed with `prog-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^prog-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`ProgramResult`](../../doc/models/program-result.md)

## Example Usage

```ruby
program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'

language = Languages::ENUS

result = program_controller.retrieve_program(
  program_token,
  language: language
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb",
  "currency": "USD",
  "bank": "MCB",
  "electricWallets": [
    {
      "type": "TIGO_MONEY",
      "electronicWalletCountry": "SV",
      "electronicWalletCurrency": "USD"
    },
    {
      "type": "TIGO_MONEY",
      "electronicWalletCountry": "GT",
      "electronicWalletCurrency": "GTQ"
    },
    {
      "type": "AIRTEL_MONEY",
      "electronicWalletCountry": "TZ",
      "electronicWalletCurrency": "TZS"
    },
    {
      "type": "MCASH",
      "electronicWalletCountry": "LK",
      "electronicWalletCurrency": "LKR"
    }
  ],
  "type": "CONSUMER_GPR",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb",
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

