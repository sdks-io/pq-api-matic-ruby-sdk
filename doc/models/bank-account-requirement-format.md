
# Bank Account Requirement Format

Classifies the [format](#/rest/models/structures/bank-account-requirement-format) of the required information for a bank account

## Structure

`BankAccountRequirementFormat`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `example` | `String` | Optional | Example of a requirement generated from the validator(s) |
| `legend` | [`Array[BankAccountRequirementFormatLegend]`](../../doc/models/bank-account-requirement-format-legend.md) | Optional | - |

## Example (as JSON)

```json
{
  "example": "string",
  "legend": [
    {
      "key": "string",
      "descriptions": [
        {
          "language": "en-US",
          "translation": "string"
        }
      ]
    }
  ]
}
```

