
# Portal Payment Job Quote

TODO

## Structure

`PortalPaymentJobQuote`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Float` | Optional | Allocated money to be sent in the transaction.<br><br>**Default**: `1.02` |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `source_token` | `String` | Optional | Unique identifier representing the [source of funds](#/rest/models/structures/source-token)<br><br>**Default**: `'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|user\|dest)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `purpose` | [`PaymentPurposes`](../../doc/models/payment-purposes.md) | Optional | Used to identify the [purpose of a payment](#/models/structures/payment-object) and impacts reporting and calculated taxable earnings (if utilizing tax services) |
| `client_payment_id` | `String` | Optional | Unique value provided by the client for the [payment](page:resources/payments), utilized for reference and deduplication.<br><br>**Default**: `'d4b6f130-1d1c-4ce2-903a-0c1ad128f55e'` |

## Example (as JSON)

```json
{
  "amount": 1.02,
  "currency": "USD",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "programUserId": "pdekt",
  "email": "john.doe@email.com",
  "note": "string",
  "memo": "string",
  "purpose": "BONUS",
  "clientPaymentId": "d4b6f130-1d1c-4ce2-903a-0c1ad128f55e"
}
```

