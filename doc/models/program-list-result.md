
# Program List Result

## Structure

`ProgramListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[ProgramObject]`](../../doc/models/program-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb",
      "currency": "USD",
      "bank": "MCB",
      "type": "CONSUMER_GPR",
      "links": [
        {
          "href": "string",
          "params": {
            "rel": "self"
          }
        }
      ],
      "electronicWallets": [
        {
          "type": "AIRTEL_MONEY",
          "electronicWalletCountry": "SD",
          "electronicWalletCurrency": "SZL"
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

