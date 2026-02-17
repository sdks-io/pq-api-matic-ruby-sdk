
# Prepaid Card Pin Token Result

## Structure

`PrepaidCardPinTokenResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_processor_type` | [`CardProcessors`](../../doc/models/card-processors.md) | Optional | The processor type for the prepaid card |
| `card_pin_token` | `String` | Optional | [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a two-leg card PIN reveal request sent directly from the client that generally involves a second piece of data, such as the CVV code on the back of the card. |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `url` | `String` | Optional | Full path of the URI to perform the request action against a prepaid card that replaces the need to build the URL with query params. |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
{
  "cardProcessorType": "QOLO",
  "cardPinToken": "string",
  "token": "string",
  "url": "string",
  "links": [
    {
      "href": "string",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  }
}
```

