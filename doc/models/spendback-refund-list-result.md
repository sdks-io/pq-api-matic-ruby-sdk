
# Spendback Refund List Result

## Structure

`SpendbackRefundListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[SpendbackRefundObject]`](../../doc/models/spendback-refund-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
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

