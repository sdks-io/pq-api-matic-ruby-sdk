
# Update Card Pin

## Structure

`UpdateCardPin`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_pin_token` | `String` | Optional | [Token](#/rest/models/structures/prepaid-card-pin-token) used as part of a two-leg card PIN reveal request sent directly from the client that generally involves a second piece of data, such as the CVV code on the back of the card. |
| `card_pin` | `String` | Optional | [Card PIN](#/rest/models/structures/prepaid-card-pin) for ATM and Debit usage |

## Example (as JSON)

```json
{
  "cardPinToken": "string",
  "cardPin": "string"
}
```

