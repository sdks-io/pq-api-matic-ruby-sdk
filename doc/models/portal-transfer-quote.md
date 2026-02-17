
# Portal Transfer Quote

Response from a invitation request

## Structure

`PortalTransferQuote`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `source_token` | `String` | Optional | Unique identifier representing the [source of funds](#/rest/models/structures/source-token)<br><br>**Default**: `'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|user\|dest)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `auto_accept_quote` | `TrueClass \| FalseClass` | Optional | Determines whether the quote is [automatically accepted](#/rest/models/structures/auto-accept-quote) or if a `POST` utilizing the token for the quote is required. |
| `client_transfer_id` | `String` | Optional | [Unique value](#/rest/models/structures/client-transfer-id) provided by the client for the transfer, utilized for reference and deduplication. |
| `destination_amount` | `Float` | Optional | Allocated money to be sent in the transaction. |
| `destination_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `transfer_lock_side` | [`LockSideTypes`](../../doc/models/lock-side-types.md) | Optional | Type of [lockside](page:additional-api-information/transfer-lockside-types) for transfers. |
| `transfer_method_type` | [`TransferMethodTypes`](../../doc/models/transfer-method-types.md) | Optional | Optional transfer methods applicable only to bank and e-wallet transfers. |

## Example (as JSON)

```json
{
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "programUserId": "pdekt",
  "email": "john.doe@email.com",
  "note": "string",
  "memo": "string",
  "autoAcceptQuote": true,
  "clientTransferId": "string",
  "destinationAmount": 50,
  "destinationCurrency": "USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH"
}
```

