# Agreements

# Agreements

---


The *Agreements* resource is a document that the user agrees to as part of opening an account with PayQuicker.

Users need to agree to the terms of the account, which includes fees, privacy policy, esign, and consent.

If the user does not agree to these terms, an account will not be opened.

With this resource, you can perform the following requests:

* `POST`: Accept a single agreement
* `GET`: Retrieve an agreement or list of agreements

For more information, see [Agreements](page:resources/agreements).

```ruby
agreements_controller = client.agreements
```

## Class Name

`AgreementsController`

## Methods

* [Accept Agreement](../../doc/controllers/agreements.md#accept-agreement)
* [List Agreements](../../doc/controllers/agreements.md#list-agreements)
* [Retrieve Program Agreement](../../doc/controllers/agreements.md#retrieve-program-agreement)


# Accept Agreement

Accept a single program [agreement](page:resources/agreements).

```ruby
def accept_agreement(user_token,
                     agreement_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `agreement_token` | `String` | Template, Required | Auto-generated unique identifier representing a program agreement, prefixed with `agmt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^agmt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

`void`

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

agreement_token = 'agmt-b33d420f-6c1b-4a93-9455-d6585552b97d'

agreements_controller.accept_agreement(
  user_token,
  agreement_token
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# List Agreements

Retrieve a list of program [agreements](page:resources/agreements) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_agreements(program_token,
                    page,
                    page_size,
                    filter: nil,
                    sort: nil,
                    language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `program_token` | `String` | Template, Required | Auto-generated unique identifier representing a program, prefixed with `prog-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^prog-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`AgreementListResultJson`](../../doc/models/agreement-list-result-json.md)

## Example Usage

```ruby
program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = agreements_controller.list_agreements(
  program_token,
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
      "token": "agmt-b33d420f-6c1b-4a93-9455-d6585552b97d",
      "contentBase64": "DQogIGZvciB5b3VyIHBsYXN0aW...KPC9ib2R5Pg0KDQo8L2h0bWw+DQo=",
      "url": "https://cdn.payquicker.io/content/Agreements/Cardholder/v1/Languages_EN_US/CardholderAgreement-Consumer-ACH-20k-MCB-USD.pdf",
      "type": "CARD_HOLDER_AGREEMENT",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb/agreements/agmt-b33d420f-6c1b-4a93-9455-d6585552b97d",
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
      "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb/agreements",
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


# Retrieve Program Agreement

Retrieve a single program [agreement](page:resources/agreements).

```ruby
def retrieve_program_agreement(program_token,
                               agreement_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `program_token` | `String` | Template, Required | Auto-generated unique identifier representing a program, prefixed with `prog-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^prog-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `agreement_token` | `String` | Template, Required | Auto-generated unique identifier representing a program agreement, prefixed with `agmt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^agmt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`AgreementResult`](../../doc/models/agreement-result.md)

## Example Usage

```ruby
program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'

agreement_token = 'agmt-b33d420f-6c1b-4a93-9455-d6585552b97d'

result = agreements_controller.retrieve_program_agreement(
  program_token,
  agreement_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "token": "agmt-b33d420f-6c1b-4a93-9455-d6585552b97d",
  "contentBase64": "DQogIGZvciB5b3VyIHBsYXN0aW...KPC9ib2R5Pg0KDQo8L2h0bWw+DQo=",
  "url": "https://cdn.payquicker.io/content/Agreements/Cardholder/v1/Languages_EN_US/CardholderAgreement-Consumer-ACH-20k-MCB-USD.pdf",
  "type": "CARD_HOLDER_AGREEMENT",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb/agreements/agmt-b33d420f-6c1b-4a93-9455-d6585552b97d",
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

