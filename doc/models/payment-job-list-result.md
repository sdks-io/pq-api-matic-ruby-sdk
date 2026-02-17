
# Payment Job List Result

## Structure

`PaymentJobListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[PaymentJobObject]`](../../doc/models/payment-job-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "string",
      "portalId": "tjvbh",
      "filename": "exampleFile.jpg",
      "fileToken": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
      "created": "2026-02-07T22:23:09.9667010Z",
      "notBefore": "2022-04-26T15:16:18Z",
      "count": 50,
      "type": "PAYMENTS",
      "status": "COMPLETED",
      "items": [
        {
          "token": "string",
          "portalId": "tjvbh",
          "amount": 1.02,
          "clientPaymentId": "d4b6f130-1d1c-4ce2-903a-0c1ad128f55e",
          "created": "2026-02-07T22:23:09.9667010Z",
          "currency": "USD",
          "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
          "programUserId": "pdekt",
          "email": "john.doe@email.com",
          "memo": "string",
          "note": "string",
          "purpose": "BONUS",
          "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
          "status": "ACCEPTED",
          "receiptToken": "rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
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

