
# Prepaid Card Data Token Object

## Structure

`PrepaidCardDataTokenObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_processor_type` | [`CardProcessors`](../../doc/models/card-processors.md) | Required | The processor type for the prepaid card |
| `resource_value` | `String` | Optional | Value of the target resource |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `token_purpose_type` | [`TokenPurposes`](../../doc/models/token-purposes.md) | Required | Purpose of the token |
| `url` | `String` | Optional | Full path of the URI to perform the request action against a prepaid card that replaces the need to build the URL with query params. |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "cardProcessorType": "QOLO",
  "resourceValue": "string",
  "token": "string",
  "tokenPurposeType": "CARD_OPERATION",
  "url": "string",
  "links": [
    {
      "href": "string",
      "params": {
        "rel": "self"
      }
    }
  ]
}
```

