# Documents

# Documents

---


The *Documents* resource allows you to list, create, retrieve, and replace documents associated with a user's account.

A Document represents a single file attached to a given resource. Often these are documents attached to payment orders to provide further context or image files for incoming checks.

With this resource, you can perform the following requests:

* `POST`: Upload a new document
* `GET`: Retrieve a document or list of documents
* `PUT`: Update a document

For more information, see [Documents](page:resources/documents).

```ruby
documents_controller = client.documents
```

## Class Name

`DocumentsController`

## Methods

* [List Documents](../../doc/controllers/documents.md#list-documents)
* [List User Document Requirements](../../doc/controllers/documents.md#list-user-document-requirements)
* [Replace Document](../../doc/controllers/documents.md#replace-document)
* [Retrieve Document](../../doc/controllers/documents.md#retrieve-document)
* [Upload Document](../../doc/controllers/documents.md#upload-document)


# List Documents

Retrieve a list of user [documents](page:resources/documents) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_documents(user_token,
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

[`DocumentListResult`](../../doc/models/document-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = documents_controller.list_documents(
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
      "createDate": "2022-05-04T18:59:38Z",
      "fields": [
        {
          "key": "TYPE",
          "value": "DRIVERS_LICENSE"
        },
        {
          "key": "STATUS",
          "value": "PROVIDED"
        },
        {
          "key": "EXPIRATION_DATE",
          "value": "10-31-2021"
        }
      ],
      "filename": "List.jpg",
      "mimeType": "image/jpeg",
      "token": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
      "links": [
        {
          "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
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
    "pageCount": "0",
    "recordCount": "0",
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  },
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents?page=1&pageSize=2",
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


# List User Document Requirements

Returns a list of user documents that the user can provide

```ruby
def list_user_document_requirements(user_token,
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

[`DocumentRequirementsListResult`](../../doc/models/document-requirements-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = documents_controller.list_user_document_requirements(
  user_token,
  page,
  page_size,
  filter: filter,
  sort: sort,
  language: language
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Replace Document

Replace the user [documents](page:resources/documents) at the given document token.

```ruby
def replace_document(user_token,
                     document_token,
                     fields: nil,
                     upload: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `document_token` | `String` | Template, Required | Auto-generated unique identifier representing an uploaded document, prefixed with `docu-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^docu-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `fields` | [`CreateOrUpdateDocumentFields`](../../doc/models/create-or-update-document-fields.md) | Form (JSON-Encoded), Optional | - |
| `upload` | `File \| UploadIO` | Form, Optional | Document to be uploaded |

## Requires scope

### server

`modify`

## Response Type

[`DocumentResult`](../../doc/models/document-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'

fields = CreateOrUpdateDocumentFields.new(
  [
    DocumentDetails.new(
      UploadFields::EXPIRATION_DATE,
      'string'
    )
  ]
)

result = documents_controller.replace_document(
  user_token,
  document_token,
  fields: fields
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "createDate": "2022-05-04T18:59:38Z",
  "fields": [
    {
      "key": "EXPIRATION_DATE",
      "value": "10-31-2021"
    },
    {
      "key": "TYPE",
      "value": "DRIVERS_LICENSE"
    },
    {
      "key": "STATUS",
      "value": "PROVIDED"
    }
  ],
  "token": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
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


# Retrieve Document

Retrieve a single user [document](page:resources/documents) by its document token.

```ruby
def retrieve_document(user_token,
                      document_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `document_token` | `String` | Template, Required | Auto-generated unique identifier representing an uploaded document, prefixed with `docu-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^docu-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`DocumentResult`](../../doc/models/document-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'

result = documents_controller.retrieve_document(
  user_token,
  document_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "createDate": "2022-05-04T18:59:38Z",
  "fields": [
    {
      "key": "EXPIRATION_DATE",
      "value": "10-31-2021"
    },
    {
      "key": "TYPE",
      "value": "DRIVERS_LICENSE"
    },
    {
      "key": "STATUS",
      "value": "PROVIDED"
    }
  ],
  "token": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
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


# Upload Document

Upload a user [document](page:resources/documents).

```ruby
def upload_document(user_token,
                    fields: nil,
                    upload: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `fields` | [`CreateOrUpdateDocumentFields`](../../doc/models/create-or-update-document-fields.md) | Form (JSON-Encoded), Optional | - |
| `upload` | `File \| UploadIO` | Form, Optional | Document to be uploaded |

## Requires scope

### server

`modify`

## Response Type

[`DocumentResult`](../../doc/models/document-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

fields = CreateOrUpdateDocumentFields.new(
  [
    DocumentDetails.new(
      UploadFields::EXPIRATION_DATE,
      'string'
    )
  ]
)

result = documents_controller.upload_document(
  user_token,
  fields: fields
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "createDate": "2022-05-04T18:59:38Z",
  "fields": [
    {
      "key": "EXPIRATION_DATE",
      "value": "10-31-2021"
    },
    {
      "key": "TYPE",
      "value": "DRIVERS_LICENSE"
    },
    {
      "key": "STATUS",
      "value": "PROVIDED"
    }
  ],
  "token": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
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

