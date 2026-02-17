
# Authorization List Result

## Structure

`AuthorizationListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[AuthorizationObject]`](../../doc/models/authorization-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "type": "UNDEFINED",
      "createdOn": "2026-02-07T22:23:09.9667010Z",
      "sign": "CREDIT",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
      "amount": 1.02,
      "currency": "USD",
      "status": "UNDEFINED",
      "descriptions": [
        {
          "language": "en-US",
          "translation": "string"
        }
      ],
      "authDate": "2026-02-07T22:23:09.3746937Z",
      "reference": "string"
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

