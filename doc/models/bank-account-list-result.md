
# Bank Account List Result

## Structure

`BankAccountListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[BankAccountObject]`](../../doc/models/bank-account-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "token": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
      "bankAccountOwnershipType": "BUSINESS",
      "bankcountry": "US",
      "bankCurrency": "USD",
      "address": {
        "address1": "string",
        "address2": "string",
        "address3": "string",
        "city": "string",
        "region": "string",
        "postalCode": "nzl",
        "country": "US"
      },
      "createdOn": "2026-02-07T22:23:09.9667010Z",
      "description": "string",
      "fields": [
        {
          "key": "BANK_ACH_ABA",
          "value": "string"
        }
      ],
      "status": "ACTIVE",
      "type": "CHECKING",
      "transferMethodType": "IACH",
      "links": [
        {
          "href": "string",
          "params": {
            "rel": "self"
          }
        }
      ],
      "bankCountry": "PM"
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

