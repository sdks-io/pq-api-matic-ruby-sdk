
# Balance Object

## Structure

`BalanceObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Float` | Required | Amount of money in the account<br><br>**Default**: `0` |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Required | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `formatted_amount` | `String` | Required | Combination of the amount and currency type<br><br>**Default**: `'$0.05 USD'` |
| `token` | `String` | Required | [Token](#/rest/models/structures/token) representing the resource |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "amount": 0.0,
  "currency": "USD",
  "formattedAmount": "$0.05 USD",
  "token": "string",
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

