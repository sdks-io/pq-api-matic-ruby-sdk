
# Agreement Object

## Structure

`AgreementObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `content_base_64` | `String` | Optional | Program agreement content |
| `url` | `String` | Optional | Full path of the URI to the content for the program agreement |
| `type` | [`AgreementTypes`](../../doc/models/agreement-types.md) | Optional | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "string",
  "contentBase64": "string",
  "url": "string",
  "type": "CARD_HOLDER_AGREEMENT",
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

