
# Spendback Refund Object

## Structure

`SpendbackRefundObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `portal_id` | `String` | Optional | Reference ID in the PayQuicker Hosted Portal, if applicable.<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `amount` | `Float` | Optional | Money to be refunded from original payment |
| `client_spendback_refund_id` | `String` | Optional | [Unique value](#/rest/models/structures/client-transfer-id) provided by the client for the transfer, utilized for reference and deduplication. |
| `created` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `source_token` | `String` | Optional | Unique identifier representing the [source of funds](#/rest/models/structures/source-token)<br><br>**Default**: `'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|user\|dest)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Optional | Unique identifier representing the [destination of funds](#/rest/models/structures/destination-token)<br><br>**Default**: `'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|dest\|user)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `status` | [`TransferStatuses`](../../doc/models/transfer-statuses.md) | Optional | Current status of a [transfer](#/rest/models/structures/transfer) |
| `receipt_token` | `String` | Optional | Auto-generated unique identifier representing a receipt, prefixed with `rcpt-`.<br><br>**Default**: `'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^rcpt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "string",
  "portalId": "tjvbh",
  "amount": 1.23,
  "clientSpendbackRefundId": "rfnd-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
  "created": "2026-02-07T22:23:09.9667010Z",
  "currency": "USD",
  "memo": "string",
  "note": "string",
  "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",
  "destinationToken": "dest-631b200f-665d-4dbe-bd01-3063c9dec97d",
  "programUserId": "pdekt",
  "email": "john.doe@email.com",
  "status": "ACCEPTED",
  "receiptToken": "rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c",
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

