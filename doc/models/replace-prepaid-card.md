
# Replace Prepaid Card

## Structure

`ReplacePrepaidCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_package` | `String` | Optional | [Package](#/rest/models/structures/prepaid-card-package) for the card being displayed, including artwork, packaging, and delivery method |
| `card_replacement_reason` | [`PrepaidCardReplacementReasons`](../../doc/models/prepaid-card-replacement-reasons.md) | Optional | Reason for [prepaid card](page:resources/prepaid-cards) replacement. |

## Example (as JSON)

```json
{
  "cardPackage": "71290",
  "cardReplacementReason": "COMPROMISED"
}
```

