
# Electronic Transfer Failure Types

The type of failure for a bank transfer

## Enumeration

`ElectronicTransferFailureTypes`

## Fields

| Name | Description |
|  --- | --- |
| `INCORRECT_ACCOUNT_NUMBER` | The account number is invalid or incorrect. |
| `INVALID_SORT_CODE` | The sort code or account number are invalid. |
| `ACCOUNT_NOT_FOUND` | No account was found with the details provided. |
| `DESTINATION_ACCOUNT_NUMBER_INVALID` | The destination account number is invalid. |
| `BENEFICIARY_ACCOUNT_NUMBER_INVALID` | The destination account number is invalid. |
| `ACCOUNT_CLOSED` | The bank account is closed. |
| `GENERAL_COMPLIANCE` | GENERAL_COMPLIANCE |
| `INCORRECT_ROUTING_CODE` | INCORRECT_ROUTING_CODE |
| `BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT` | BELOW_MIN_ABOVE_MAX_ALLOWED_AMOUNT |
| `INVALID_INSUFFICIENT_PAYMENT_DETAILS` | INVALID_INSUFFICIENT_PAYMENT_DETAILS |
| `INVALID_BENEFICIARY_NAME` | INVALID_BENEFICIARY_NAME |
| `INVALID_BENEFICIARY_TAX_ID` | INVALID_BENEFICIARY_TAX_ID |
| `INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS` | INVALID_BENEFICIARY_BANK_BRANCH_ADDRESS |
| `INVALID_BENEFICIARY_ADDRESS` | INVALID_BENEFICIARY_ADDRESS |
| `BANK_UNABLE_TO_APPLY` | BANK_UNABLE_TO_APPLY |
| `BANK_CODE_WRONG` | BANK_CODE_WRONG |
| `OTHER` | The transfer failed and the reason will be in the EFTFAILURECOMMENT field |

## Example

```
INCORRECT_ACCOUNT_NUMBER
```

