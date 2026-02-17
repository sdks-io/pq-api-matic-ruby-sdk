# Compliance

Compliance-related operations

```ruby
compliance_controller = client.compliance
```

## Class Name

`ComplianceController`

## Methods

* [List Identity Checks](../../doc/controllers/compliance.md#list-identity-checks)
* [Retrieve Identity Check](../../doc/controllers/compliance.md#retrieve-identity-check)


# List Identity Checks

Retrieve a list of [IDV checks](page:resources/user#list-user-idv-checks) by user token that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_identity_checks(user_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`readonly`

## Response Type

[`IdvCheckListResult`](../../doc/models/idv-check-list-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

result = compliance_controller.list_identity_checks(user_token)
puts result
```

## Example Response *(as JSON)*

```json
{
  "payload": [
    {
      "idvProviderReference": "yPV0h4o1Yw3QzdLAvA7a",
      "idvResult": "PASS",
      "idvSubResult": "HARD",
      "idvProvider": "HOOYU",
      "createdOn": "2020-02-21T22:00:00Z",
      "raw": "<RAW IDV processor output, for informational /debugging purposes only>",
      "idvCheckType": "NON_DOCUMENTARY",
      "idvDisposition": "FINAL",
      "token": "idvc-7e7567e0-c2db-485d-896d-45901a10baa9",
      "userToken": "user-f012bc86-4d42-415b-a8b2-be5e0b90e59a",
      "links": [
        {
          "params": {
            "rel": "self"
          },
          "href": "https://api.payquicker.io/api/v2/users/user-f012bc86-4d42-415b-a8b2-be5e0b90e59a/idv-checks/idvc-7e7567e0-c2db-485d-896d-45901a10baa9"
        }
      ]
    }
  ],
  "links": [
    {
      "params": {
        "rel": "self"
      },
      "href": "https://api.payquicker.io/api/v2/users/user-f012bc86-4d42-415b-a8b2-be5e0b90e59a/idv-checks"
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


# Retrieve Identity Check

Retrieve a list of [IDV checks](page:resources/user#retrieve-user-idv-check) by IDVC token that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def retrieve_identity_check(user_token,
                            idvc_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `idvc_token` | `String` | Template, Required | Auto-generated unique identifier representing a user IDV check, prefixed with `idvc-`. |

## Requires scope

### server

`readonly`

## Response Type

[`IdvCheckResult`](../../doc/models/idv-check-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

idvc_token = 'idvc-6e7567e0-c2db-485d-896d-45901a10aaaa'

result = compliance_controller.retrieve_identity_check(
  user_token,
  idvc_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "createdOn": "2022-04-20T17:34:50Z",
  "idvCheckType": "PII",
  "idvDispostion": "UNDEFINED",
  "idvProvider": "FISIDOLOGY",
  "idvResult": "PASS",
  "idvSubResult": "HARD",
  "token": "idvc-5a04bacf-f99c-4962-8c02-d8e744c625d6",
  "userToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/idv-checks/idvc-5a04bacf-f99c-4962-8c02-d8e744c625d6",
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

