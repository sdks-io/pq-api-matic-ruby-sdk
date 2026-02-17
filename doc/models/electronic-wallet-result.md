
# Electronic Wallet Result

## Structure

`ElectronicWalletResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | Unique identifier representing the [destination of funds](#/rest/models/structures/destination-token)<br><br>**Default**: `'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|dest\|user)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `type` | [`ElectronicWalletTypes`](../../doc/models/electronic-wallet-types.md) | Optional | Name of the electronic wallet |
| `electronic_wallet_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `electronic_wallet_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `created_on` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `fields` | [`Array[ElectronicWalletField]`](../../doc/models/electronic-wallet-field.md) | Optional | - |
| `status` | [`ElectronicWalletStatuses`](../../doc/models/electronic-wallet-statuses.md) | Optional | Current verification status type of the electronic wallet |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
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
  "meta": {
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  },
  "electronicWalletCountry": "GL"
}
```

