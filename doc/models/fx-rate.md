
# Fx Rate

Exchange rate

## Structure

`FxRate`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `destination_amount` | `Float` | Optional | Allocated money to be sent in the transaction. |
| `destination_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `destination_formatted_amount` | `String` | Optional | Combination of the amount and currency type<br><br>**Default**: `'$0.05 USD'` |
| `rate` | `Float` | Optional | Exchange [rate](#/rest/models/structures/rate)<br><br>**Constraints**: `>= 0`, `<= 1` |
| `source_amount` | `Float` | Optional | Allocated money to be sent in the transaction.<br><br>**Default**: `1.02` |
| `source_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `source_formatted_amount` | `String` | Optional | Combination of the amount and currency type<br><br>**Default**: `'$0.05 USD'` |

## Example (as JSON)

```json
{
  "destinationAmount": 50.0,
  "destinationCurrency": "USD",
  "destinationFormattedAmount": "$0.05 USD",
  "rate": 0.85,
  "sourceAmount": 1.02,
  "sourceCurrency": "USD",
  "sourceFormattedAmount": "$0.05 USD"
}
```

