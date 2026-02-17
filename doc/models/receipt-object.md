
# Receipt Object

## Structure

`ReceiptObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | Auto-generated unique identifier representing a receipt, prefixed with `rcpt-`.<br><br>**Default**: `'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^rcpt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `type` | [`TransferTypes`](../../doc/models/transfer-types.md) | Optional | [Transfer type](#/rest/models/structures/transfer-type) |
| `created_on` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `sign` | [`Signs`](../../doc/models/signs.md) | Optional | Receipt sign types |
| `source_token` | `String` | Optional | Unique identifier representing the [source of funds](#/rest/models/structures/source-token)<br><br>**Default**: `'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|user\|dest)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Optional | Unique identifier representing the [destination of funds](#/rest/models/structures/destination-token)<br><br>**Default**: `'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|dest\|user)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `amount` | `Float` | Optional | Allocated money to be sent in the transaction.<br><br>**Default**: `1.02` |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `status` | [`ReceiptStatuses`](../../doc/models/receipt-statuses.md) | Optional | Receipt status types |
| `descriptions` | [`Array[ReceiptDescriptions]`](../../doc/models/receipt-descriptions.md) | Optional | - |
| `delivery_details` | [`DeliveryDetails`](../../doc/models/delivery-details.md) | Optional | The delivery details of a Bank transfer with the minimum and maximum delivery in minutes or the expected delivery time. |
| `details` | [`ReceiptDetails`](../../doc/models/receipt-details.md) | Optional | - |
| `fx_rate` | [`FxRate`](../../doc/models/fx-rate.md) | Optional | Exchange rate |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
  "type": "ACCOUNT_TO_ACCOUNT_TRANSFER",
  "createdOn": "02/07/2026 22:23:09",
  "sign": "CREDIT",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
  "amount": 1.02,
  "currency": "USD",
  "status": "UNDEFINED",
  "descriptions": [
    {
      "language": "en-US",
      "translation": "string"
    }
  ],
  "deliveryDetails": {
    "minimumDeliveryMinutes": 4320,
    "maximumDeliveryMinutes": 10080
  },
  "fxRate": {
    "destinationAmount": 50,
    "destinationCurrency": "USD",
    "destinationFormattedAmount": "$0.05 USD",
    "rate": 0.85,
    "sourceAmount": 1.02,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$0.05 USD"
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

