
# Portal Spendback Quote

TODO

## Structure

`PortalSpendbackQuote`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Float` | Optional | Allocated money to be sent in the transaction.<br><br>**Default**: `1.02` |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `destination_token` | `String` | Optional | Unique identifier representing the [destination of funds](#/rest/models/structures/destination-token)<br><br>**Default**: `'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|dest\|user)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `client_spendback_id` | `String` | Optional | [Unique value](#/rest/models/structures/client-transfer-id) provided by the client for the spendback |
| `auto_accept_quote` | `TrueClass \| FalseClass` | Optional | Determines whether the quote is [automatically accepted](#/rest/models/structures/auto-accept-quote) or if a `POST` utilizing the token for the quote is required. |

## Example (as JSON)

```json
{
  "amount": 1.02,
  "currency": "USD",
  "programUserId": "pdekt",
  "email": "john.doe@email.com",
  "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
  "memo": "string",
  "note": "string",
  "clientSpendbackId": "spnd-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
  "autoAcceptQuote": true
}
```

