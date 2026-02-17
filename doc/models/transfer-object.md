
# Transfer Object

transfer object

## Structure

`TransferObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `portal_id` | `String` | Optional | Reference ID in the PayQuicker Hosted Portal, if applicable.<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `client_transfer_id` | `String` | Optional | [Unique value](#/rest/models/structures/client-transfer-id) provided by the client for the transfer, utilized for reference and deduplication. |
| `created` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `delivery_details` | [`DeliveryDetails`](../../doc/models/delivery-details.md) | Optional | The delivery details of a Bank transfer with the minimum and maximum delivery in minutes or the expected delivery time. |
| `destination_amount` | `Float` | Optional | Allocated money to be sent in the transaction. |
| `destination_currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `destination_token` | `String` | Optional | Unique identifier representing the [destination of funds](#/rest/models/structures/destination-token)<br><br>**Default**: `'dest-631b200f-665d-4dbe-bd01-3063c9dec97d'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|dest\|user)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `fee` | [`FeeDistribution`](../../doc/models/fee-distribution.md) | Optional | - |
| `fx_rate` | [`FxRate`](../../doc/models/fx-rate.md) | Optional | Exchange rate |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `source_token` | `String` | Optional | Unique identifier representing the [source of funds](#/rest/models/structures/source-token)<br><br>**Default**: `'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^(acct\|user\|dest)-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `status` | [`TransferStatuses`](../../doc/models/transfer-statuses.md) | Optional | Current status of a [transfer](#/rest/models/structures/transfer) |
| `receipt_token` | `String` | Optional | Auto-generated unique identifier representing a receipt, prefixed with `rcpt-`.<br><br>**Default**: `'rcpt-b7fda294-8d3a-48e8-9a11-ef7be07a732c'`<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^rcpt-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `transfer_lock_side` | [`LockSideTypes`](../../doc/models/lock-side-types.md) | Optional | Type of [lockside](page:additional-api-information/transfer-lockside-types) for transfers. |
| `transfer_method_type` | [`TransferMethodTypes`](../../doc/models/transfer-method-types.md) | Optional | Optional transfer methods applicable only to bank and e-wallet transfers. |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "xfer-18755c01-317f-46a1-5e5f-278d04c8ee9a",
  "clientTransferId": "b89d2ee9-9427-4551-85de-a2514d102020",
  "created": "2025-06-16T18:47:35Z",
  "destinationAmount": 15,
  "destinationCurrency": "USD",
  "destinationToken": "dest-0c47686f-b48d-4bf6-9e3c-e2991cd50582",
  "fee": {
    "category": "USER",
    "destinationCountry": "USA",
    "destinationCurrency": "USD",
    "distribution": [
      {
        "amount": 1.5,
        "currency": "USD",
        "description": [
          {
            "language": "en-US",
            "translation": "Transfer to a Bank Fee"
          },
          {
            "language": "en-US",
            "translation": "Poplatek za převod do banky"
          },
          {
            "language": "de-DE",
            "translation": "Transfer zu einer Bankgebühr"
          },
          {
            "language": "es-ES",
            "translation": "Coste de la transferencia a un banco"
          },
          {
            "language": "en-US",
            "translation": "Pankkiin siirto -maksu"
          },
          {
            "language": "fr-FR",
            "translation": "Frais de virement vers une banque"
          },
          {
            "language": "it-IT",
            "translation": "Tariffa Trasferimento Bancario"
          },
          {
            "language": "ja-JP",
            "translation": "銀行への送金の手数料"
          },
          {
            "language": "ko-KR",
            "translation": "은행으로 송금 수수료"
          },
          {
            "language": "nl-NL",
            "translation": "Kosten bankoverschrijving"
          },
          {
            "language": "pl-PL",
            "translation": "Opłata za przelew do banku"
          },
          {
            "language": "pt-BR",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "ru-RU",
            "translation": "Комиссия за перевод на банковский счет"
          },
          {
            "language": "en-US",
            "translation": "Avgift för överföring till en bank"
          },
          {
            "language": "zh-Hans",
            "translation": "转账到银行手续费"
          },
          {
            "language": "zh-Hant",
            "translation": "轉帳至銀行手續費"
          },
          {
            "language": "fr-CA",
            "translation": "Frais de transfert bancaire"
          },
          {
            "language": "pt-PT",
            "translation": "Taxa de Transferência para um Banco"
          },
          {
            "language": "es-MX",
            "translation": "Transferencia a una Tarifa Bancaria"
          },
          {
            "language": "en-GB",
            "translation": "Transfer to a Bank Fee"
          }
        ],
        "formattedAmount": "$1.50 USD",
        "percentage": 1,
        "responsibility": "USER",
        "responsibilitySource": "SCHEDULE",
        "sourceToken": "user-e37d1e57-2536-44fc-a505-9f7fa725de9c"
      }
    ],
    "source": "TRANSACTION",
    "totalAmount": 16.5,
    "transactionAmount": 15,
    "type": "BANK_TRANSFER",
    "valueAmount": 1.5,
    "valueType": "STATIC"
  },
  "fxRate": {
    "destinationAmount": 15,
    "destinationCurrency": "USD",
    "rate": 1,
    "sourceAmount": 15,
    "sourceCurrency": "USD",
    "sourceFormattedAmount": "$15.00 USD",
    "destinationFormattedAmount": "$15.00 USD"
  },
  "memo": "Bank transfer - memo",
  "note": "Bank transfer - note",
  "sourceToken": "user-e37d1e57-2536-44fc-a505-9f7f3425de9c",
  "status": "PENDING_ACCEPTANCE",
  "destinationFormattedAmount": "$15.00 USD",
  "amount": 15,
  "formattedAmount": "$15.00 USD",
  "transferLockSide": "SOURCE",
  "transferMethodType": "IACH",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/transfers/xfer-18755c01-317f-46a1-8e5f-278d04c8ee9a",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT"
  },
  "portalId": "portalId6",
  "deliveryDetails": null
}
```

