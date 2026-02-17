# Invitations

# Invitations

---


The *Invitations* resource allows you to list, create, retrieve, and modify invitations.

```ruby
invitations_controller = client.invitations
```

## Class Name

`InvitationsController`

## Methods

* [Cancel Invitation](../../doc/controllers/invitations.md#cancel-invitation)
* [Create Invitation](../../doc/controllers/invitations.md#create-invitation)
* [List Invitations](../../doc/controllers/invitations.md#list-invitations)
* [Retrieve Invitation](../../doc/controllers/invitations.md#retrieve-invitation)
* [Update Invitation](../../doc/controllers/invitations.md#update-invitation)


# Cancel Invitation

Cancel an open [invitation](page:resources/invitations) quote.

```ruby
def cancel_invitation(invitation_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invitation_token` | `String` | Template, Required | Auto-generated unique identifier representing an invite, prefixed with `invt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^invt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`InvitationResult`](../../doc/models/invitation-result.md)

## Example Usage

```ruby
invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

result = invitations_controller.cancel_invitation(invitation_token)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Create Invitation

Create a [invitation](page:resources/invitations) quote.

```ruby
def create_invitation(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateInvitation`](../../doc/models/create-invitation.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`InvitationResult`](../../doc/models/invitation-result.md)

## Example Usage

```ruby
body = CreateInvitation.new(
  Currencies::USD,
  nil,
  nil,
  nil,
  nil,
  DateTimeHelper.from_rfc3339(nil),
  envrr,
  nil,
  nil,
  envrr,
  envrr,
  nil,
  nil,
  nil,
  nil,
  nil,
  envrr,
  nil,
  envrr,
  envrr,
  envrr,
  envrr,
  envrr,
  envrr,
  envrr,
  nil,
  nil,
  envrr,
  nil,
  nil,
  nil,
  envrr,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  envrr
)

result = invitations_controller.create_invitation(body: body)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# List Invitations

Retrieve a list of [invitations](page:resources/invitations) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_invitations(page,
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

[`InvitationListResult`](../../doc/models/invitation-list-result.md)

## Example Usage

```ruby
page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = invitations_controller.list_invitations(
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


# Retrieve Invitation

Retrieve a single [invitation](page:resources/invitations).

```ruby
def retrieve_invitation(invitation_token,
                        filter: nil,
                        language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invitation_token` | `String` | Template, Required | Auto-generated unique identifier representing an invite, prefixed with `invt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^invt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`InvitationResult`](../../doc/models/invitation-result.md)

## Example Usage

```ruby
invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

filter = 'string'

language = Languages::ENUS

result = invitations_controller.retrieve_invitation(
  invitation_token,
  filter: filter,
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


# Update Invitation

Accept an open [invitation](page:resources/invitations) quote.

```ruby
def update_invitation(invitation_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invitation_token` | `String` | Template, Required | Auto-generated unique identifier representing an invite, prefixed with `invt-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^invt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`InvitationResult`](../../doc/models/invitation-result.md)

## Example Usage

```ruby
invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

result = invitations_controller.update_invitation(invitation_token)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |

