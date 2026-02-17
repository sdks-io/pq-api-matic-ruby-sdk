
# Webhook Subscription Result

## Structure

`WebhookSubscriptionResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `created` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `last_updated` | `DateTime` | Optional | Date and time that the object was last updated |
| `url` | `String` | Optional | Full path of the URI used for this object |
| `namespace` | [`WebhookNamespaces`](../../doc/models/webhook-namespaces.md) | Optional | Namespace used to identify and refer to the object |
| `status` | [`WebhookSubscriptionStatuses`](../../doc/models/webhook-subscription-statuses.md) | Optional | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
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
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  }
}
```

