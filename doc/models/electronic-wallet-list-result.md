
# Electronic Wallet List Result

## Structure

`ElectronicWalletListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[ElectronicWalletObject]`](../../doc/models/electronic-wallet-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
      "type": "AIRTEL_MONEY",
      "electronicWalletcountry": "US",
      "electronicWalletCurrency": "USD",
      "createdOn": "2026-02-07T22:23:09.9667010Z",
      "fields": [
        {
          "key": "UNDEFINED",
          "value": "string"
        }
      ],
      "status": "ACTIVE",
      "links": [
        {
          "href": "string",
          "params": {
            "rel": "self"
          }
        }
      ],
      "electronicWalletCountry": "SS"
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

