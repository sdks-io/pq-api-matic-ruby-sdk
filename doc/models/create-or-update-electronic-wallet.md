
# Create or Update Electronic Wallet

## Structure

`CreateOrUpdateElectronicWallet`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ElectronicWalletTypes`](../../doc/models/electronic-wallet-types.md) | Optional | Name of the electronic wallet |
| `electronic_wallet_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `electronic_wallet_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `fields` | [`Array[ElectronicWalletField]`](../../doc/models/electronic-wallet-field.md) | Optional | - |

## Example (as JSON)

```json
{
  "type": "AIRTEL_MONEY",
  "electronicWalletcountry": "US",
  "electronicWalletCurrency": "USD",
  "fields": [
    {
      "key": "UNDEFINED",
      "value": "string"
    }
  ],
  "electronicWalletCountry": "CI"
}
```

