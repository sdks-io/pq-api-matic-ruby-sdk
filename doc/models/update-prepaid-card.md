
# Update Prepaid Card

## Structure

`UpdatePrepaidCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_package` | `String` | Optional | [Package](#/rest/models/structures/prepaid-card-package) for the card being displayed, including artwork, packaging, and delivery method |
| `status` | [`PrepaidCardStatuses`](../../doc/models/prepaid-card-statuses.md) | Optional | Current [status](#/rest/models/structures/prepaid-card-status) of the prepaid card |

## Example (as JSON)

```json
{
  "cardPackage": "71290",
  "status": "ACTIVATED"
}
```

