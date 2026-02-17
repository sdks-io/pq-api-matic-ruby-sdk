
# Prepaid Card List Result

## Structure

`PrepaidCardListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[PrepaidCardObject]`](../../doc/models/prepaid-card-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "string",
      "cardNetwork": "MASTER_CARD",
      "cardNumber": "483318******4628",
      "cardPackage": "71290",
      "country": "US",
      "createdOn": "2026-02-07T22:23:09.9667010Z",
      "currency": "USD",
      "cvv": "string",
      "expires": "string",
      "status": "ACTIVATED",
      "bankInDetails": [
        {
          "key": "BANK_ACH_ABA",
          "value": "string"
        }
      ],
      "capabilities": [
        "APPLEPAY"
      ],
      "userToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc",
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

