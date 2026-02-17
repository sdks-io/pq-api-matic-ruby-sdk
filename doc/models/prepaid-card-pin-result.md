
# Prepaid Card Pin Result

## Structure

`PrepaidCardPinResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_pin` | `String` | Optional | [Card PIN](#/rest/models/structures/prepaid-card-pin) for ATM and Debit usage |
| `token` | `String` | Optional | [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a two-leg card PIN reveal request sent directly from the client that generally involves a second piece of data, such as the CVV code on the back of the card. |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
{
  "cardPin": "string",
  "token": "string",
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

