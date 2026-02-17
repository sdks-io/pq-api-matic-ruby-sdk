
# Spendback List Result

## Structure

`SpendbackListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[SpendbackObject]`](../../doc/models/spendback-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "string",
      "portalId": "tjvbh",
      "amount": 1.02,
      "clientSpendbackId": "spnd-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
      "created": "2026-02-07T22:23:09.9667010Z",
      "currency": "USD",
      "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
      "fee": {
        "category": "COMPANY",
        "distribution": [
          {
            "amount": 1.02,
            "currency": "USD",
            "description": [
              {
                "language": "en-US",
                "translation": "string"
              }
            ],
            "formattedAmount": "$0.05 USD",
            "percentage": 50,
            "responsibility": "COMPANY",
            "responsibilitySource": "CREDIT",
            "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860"
          }
        ],
        "source": "TRANSACTION",
        "totalAmount": 50,
        "transactionAmount": 50,
        "type": "BANK_TRANSFER_REVERSAL_STOP_NOC",
        "valueAmount": "string",
        "valueType": "PERCENTAGE"
      },
      "memo": "string",
      "note": "string",
      "purpose": "BONUS",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "programUserId": "pdekt",
      "email": "john.doe@email.com",
      "status": "ACCEPTED",
      "receiptToken": "rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
      "refunds": [
        {
          "token": "string",
          "portalId": "tjvbh",
          "amount": 1.23,
          "clientSpendbackRefundId": "rfnd-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
          "created": "2026-02-07T22:23:09.9667010Z",
          "currency": "USD",
          "memo": "string",
          "note": "string",
          "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
          "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
          "programUserId": "pdekt",
          "email": "john.doe@email.com",
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

