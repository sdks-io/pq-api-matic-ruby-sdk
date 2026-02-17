
# Prepaid Card Result

## Structure

`PrepaidCardResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `card_network` | [`CardNetworks`](../../doc/models/card-networks.md) | Optional | Major [credit card network](#/rest/models/structures/card-network) types |
| `card_number` | `String` | Optional | Unique number on the prepaid card |
| `card_package` | `String` | Optional | [Package](#/rest/models/structures/prepaid-card-package) for the card being displayed, including artwork, packaging, and delivery method |
| `country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `created_on` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `cvv` | `String` | Optional | Three- or four-digit [Card Verification Value (CVV)](#/rest/models/structures/cvv) number displayed on the back of a credit or debit card |
| `expires` | `String` | Optional | Date and time the object will [expire](#/rest/models/structures/expiration) |
| `status` | [`PrepaidCardStatuses`](../../doc/models/prepaid-card-statuses.md) | Optional | Current [status](#/rest/models/structures/prepaid-card-status) of the prepaid card |
| `bank_in_details` | [`Array[BankAccountField]`](../../doc/models/bank-account-field.md) | Optional | - |
| `capabilities` | [`Array[PrepaidCardCapabilities]`](../../doc/models/prepaid-card-capabilities.md) | Optional | - |
| `user_token` | `String` | Optional | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
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
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  }
}
```

