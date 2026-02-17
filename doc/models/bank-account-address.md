
# Bank Account Address

## Structure

`BankAccountAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address_1` | `String` | Required | Address Line 1<br><br>**Constraints**: *Maximum Length*: `255` |
| `address_2` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `address_3` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `city` | `String` | Required | **Constraints**: *Maximum Length*: `50` |
| `region` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `postal_code` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `50` |
| `country` | [`Countries`](../../doc/models/countries.md) | Required | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |

## Example (as JSON)

```json
{
  "address1": "string",
  "address2": "string",
  "address3": "string",
  "city": "string",
  "region": "string",
  "postalCode": "nzl",
  "country": "US"
}
```

