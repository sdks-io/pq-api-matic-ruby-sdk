
# Fee Configuration

## Structure

`FeeConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `category` | [`CategoryTypes`](../../doc/models/category-types.md) | Optional | Category types |
| `distribution` | [`Array[FeeDistribution]`](../../doc/models/fee-distribution.md) | Optional | - |
| `source` | [`FeeSources`](../../doc/models/fee-sources.md) | Optional | Fee source types |
| `total_amount` | `Float` | Optional | Total amount of money for all transactions |
| `transaction_amount` | `Float` | Optional | Total amount of money for the transaction |
| `type` | [`Fees`](../../doc/models/fees.md) | Optional | Fee types |
| `value_amount` | `String` | Optional | Value of the target resource |
| `value_type` | [`FeeValues`](../../doc/models/fee-values.md) | Optional | Fee value types |

## Example (as JSON)

```json
{
  "category": "COMPANY",
  "distribution": [
    {
      "amount": 1.02,
      "currency": "USD",
      "description": [
        {
          "language": "en-US",
          "translation": "string"
        }
      ],
      "formattedAmount": "$0.05 USD",
      "percentage": 50.0,
      "responsibility": "COMPANY",
      "responsibilitySource": "CREDIT",
      "sourceToken": "acct-3908ab5a-6ce1-474d-8b80-a63a7b147860"
    }
  ],
  "source": "TRANSACTION",
  "totalAmount": 50.0,
  "transactionAmount": 50.0,
  "type": "BANK_TRANSFER_REVERSAL_STOP_NOC",
  "valueAmount": "string",
  "valueType": "PERCENTAGE"
}
```

