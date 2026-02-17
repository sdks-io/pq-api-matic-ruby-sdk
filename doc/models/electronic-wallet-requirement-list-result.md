
# Electronic Wallet Requirement List Result

## Structure

`ElectronicWalletRequirementListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[ElectronicWalletRequirement]`](../../doc/models/electronic-wallet-requirement.md) | Optional | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Optional | - |

## Example (as JSON)

```json
{
  "payload": [
    {
      "electronicWalletType": "AIRTEL_MONEY",
      "electronicWalletcountry": "US",
      "electronicWalletCurrency": "USD",
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
            "percentage": 50.0,
            "responsibility": "COMPANY",
            "responsibilitySource": "CREDIT",
            "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860"
          }
        ],
        "source": "TRANSACTION",
        "totalAmount": 50.0,
        "transactionAmount": 50.0,
        "type": "BANK_TRANSFER_REVERSAL_STOP_NOC",
        "valueAmount": "string",
        "valueType": "PERCENTAGE"
      },
      "sourcecountry": "US",
      "sourceCurrency": "USD",
      "requirements": [
        {
          "format": {
            "example": "string",
            "legend": [
              {
                "key": "string",
                "descriptions": [
                  {
                    "language": "en-US",
                    "translation": "string"
                  }
                ]
              }
            ]
          },
          "requirement": "UNDEFINED",
          "description": [
            {
              "language": "en-US",
              "translation": "string"
            }
          ],
          "validators": [
            {
              "validatorType": "LENGTH",
              "expression": "string"
            }
          ]
        }
      ],
      "electronicWalletCountry": "SS",
      "sourceCountry": "GN"
    }
  ],
  "links": [
    {
      "href": "string",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "pageNo": "string",
    "pageSize": "string",
    "pageCount": "string",
    "recordCount": "string",
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  }
}
```

