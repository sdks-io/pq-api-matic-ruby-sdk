
# Event List Result

## Structure

`EventListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[EventObject]`](../../doc/models/event-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "string",
      "canBeCancelled": true,
      "eventRequirementCategoryType": "ACKNOWLEDGEMENT",
      "eventRequirementType": "ACH_UPGRADE_PII_DETAILS_VALIDATED",
      "eventStatus": "UNDEFINED",
      "eventType": "REQUIRED",
      "isComplete": true,
      "userAction": "NO_ACTION",
      "userImpact": "NO_IMPACT",
      "event": "WALLET_REGISTRATION",
      "links": [
        {
          "href": "string",
          "params": {
            "rel": "self"
          }
        }
      ]
    }
  ],
  "meta": {
    "pageNo": "string",
    "pageSize": "string",
    "pageCount": "string",
    "recordCount": "string",
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  },
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

