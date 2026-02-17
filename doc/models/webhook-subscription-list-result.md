
# Webhook Subscription List Result

## Structure

`WebhookSubscriptionListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[WebhookSubscriptionObject]`](../../doc/models/webhook-subscription-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "string",
      "created": "2026-02-07T22:23:09.9667010Z",
      "lastUpdated": "2026-02-07T22:23:10.6448125Z",
      "url": "string",
      "namespace": "BANKACCOUNTS.CREATED",
      "status": "AVAILABLE",
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

