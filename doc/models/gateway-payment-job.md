
# Gateway Payment Job

TODO1

## Structure

`GatewayPaymentJob`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `not_before` | `DateTime` | Optional | [Transfer](#/rest/models/structures/not-before-or-after) is scheduled and will not process before this time. |
| `not_after` | `DateTime` | Optional | [Transfer](#/rest/models/structures/not-before-or-after) expires if not completed prior to this time. |
| `items` | [`Array[GatewayPaymentJobQuote]`](../../doc/models/gateway-payment-job-quote.md) | Optional | - |

## Example (as JSON)

```json
{
  "notBefore": "2022-04-26T15:16:18Z",
  "notAfter": "2019-08-24T14:15:22Z",
  "items": [
    {
      "amount": 1.02,
      "currency": "USD",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
      "note": "string",
      "memo": "string",
      "purpose": "BONUS",
      "clientPaymentId": "d4b6f130-1d1c-4ce2-903a-0c1ad128f55e"
    }
  ]
}
```

