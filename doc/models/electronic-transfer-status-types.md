
# Electronic Transfer Status Types

The status of a bank transfer

## Enumeration

`ElectronicTransferStatusTypes`

## Fields

| Name | Description |
|  --- | --- |
| `IN_PROGRESS` | The bank transfer has been started to the destination bank. |
| `PROCESSED` | The bank transfer has been performed and the funds have arrived in the destination bank. |
| `FAILED` | The bank transfer has failed and the funds have been sent back to the source account. |
| `REFUNDED` | The bank transfer has failed. |

## Example

```
IN_PROGRESS
```

