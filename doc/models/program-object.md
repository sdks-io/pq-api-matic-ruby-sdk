
# Program Object

## Structure

`ProgramObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Required | Auto-generated unique identifier representing a program, prefixed with prog-<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^prog-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Required | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `bank` | [`BankTypes`](../../doc/models/bank-types.md) | Required | Name of the bank |
| `electronic_wallets` | [`Array[ElectronicWalletType]`](../../doc/models/electronic-wallet-type.md) | Optional | - |
| `type` | [`ProgramTypes`](../../doc/models/program-types.md) | Required | Indicates the type of program associated with a prepaid card |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
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
    },
    {
      "type": "AIRTEL_MONEY",
      "electronicWalletCountry": "SD",
      "electronicWalletCurrency": "SZL"
    }
  ]
}
```

