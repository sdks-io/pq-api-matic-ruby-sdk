
# Bank Account Requirement Format Legend

Classifies the [legend format](#/rest/models/structures/bank-account-requirement-format-legend) of the required information for a bank account

## Structure

`BankAccountRequirementFormatLegend`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Optional | - |
| `descriptions` | [`Array[Translation]`](../../doc/models/translation.md) | Optional | Localized requirement description for display purposes |

## Example (as JSON)

```json
{
  "key": "string",
  "descriptions": [
    {
      "language": "en-US",
      "translation": "string"
    }
  ]
}
```

