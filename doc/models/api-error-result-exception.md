
# Api Error Result Exception

## Structure

`ApiErrorResultException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `severity` | `String` | Required | Error Severity |
| `error` | `String` | Required | Error Code Name |
| `code` | `Float` | Required | Error Code Number |
| `message` | `String` | Required | Description of the error. |
| `reference_id` | `String` | Required | Reference ID for issue tracking. |
| `timestamp` | `String` | Required | Timestamp of when the error occurred. |
| `request_ref` | `String` | Optional | Request reference for issue tracking. |

## Example (as JSON)

```json
{
  "severity": "string",
  "error": "string",
  "code": 50.0,
  "message": "string",
  "referenceId": "string",
  "timestamp": "string",
  "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
}
```

