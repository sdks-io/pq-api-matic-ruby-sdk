
# Receipt List Result

## Structure

`ReceiptListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[ReceiptObject]`](../../doc/models/receipt-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
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

