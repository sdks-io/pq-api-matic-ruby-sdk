
# Transfer List Result

## Structure

`TransferListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[TransferObject]`](../../doc/models/transfer-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
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
      "portalId": "portalId4",
      "deliveryDetails": null
    }
  ],
  "meta": {
    "pageNo": "string",
    "pageSize": "string",
    "pageCount": "string",
    "recordCount": "string",
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  },
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

