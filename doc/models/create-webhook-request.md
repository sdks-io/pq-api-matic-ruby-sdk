
# Create Webhook Request

## Structure

`CreateWebhookRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `namespace` | [`WebhookNamespaces`](../../doc/models/webhook-namespaces.md) | Optional | Namespace used to identify and refer to the object |
| `url` | `String` | Optional | Full path of the URI used for this object |

## Example (as JSON)

```json
{
  "namespace": "BANKACCOUNTS.CREATED",
  "url": "string"
}
```

