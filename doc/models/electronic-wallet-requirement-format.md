
# Electronic Wallet Requirement Format

Classifies the [format](#/rest/models/structures/electronic-wallet-requirement-format) of the required information for an electronic wallet

## Structure

`ElectronicWalletRequirementFormat`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `example` | `String` | Optional | Example of a requirement generated from the validator(s) |
| `legend` | [`Array[ElectronicWalletRequirementFormatLegend]`](../../doc/models/electronic-wallet-requirement-format-legend.md) | Optional | - |

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

