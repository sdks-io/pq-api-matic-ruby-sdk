
# Webhook Subscription Object

Webhook subscription object

## Structure

`WebhookSubscriptionObject`

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

## Example (as JSON)

```json
{
  "token": "string",
  "created": "02/07/2026 22:23:09",
  "lastUpdated": "02/07/2026 22:23:10",
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
```

