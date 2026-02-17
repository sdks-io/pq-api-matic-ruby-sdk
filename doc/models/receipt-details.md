
# Receipt Details

## Structure

`ReceiptDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_account_id` | `String` | Optional | Bank account ID for the bank account |
| `bank_account_id_type` | [`BankAccountFields`](../../doc/models/bank-account-fields.md) | Optional | Classifies bank account [field types](#/rest/models/structures/bank-account-fields) |
| `bank_name` | `String` | Optional | Name of the bank the account is registered to |
| `bank_id` | `String` | Optional | The bank id |
| `bank_id_type` | [`BankAccountFields`](../../doc/models/bank-account-fields.md) | Optional | Classifies bank account [field types](#/rest/models/structures/bank-account-fields) |
| `branch_address` | `String` | Optional | The bank branch address |
| `branch_city` | `String` | Optional | The bank branch city |
| `branch_id` | `String` | Optional | The bank branch id |
| `branch_name` | `String` | Optional | The bank branch name |
| `branch_postal_code` | `String` | Optional | The bank branch postal code |
| `branch_phone_number` | `String` | Optional | The bank branch phone number |
| `branch_region` | `String` | Optional | The bank branch region |
| `beneficary_tax_id` | `String` | Optional | The beneficiary's tax id |
| `beneficary_tax_id_type` | [`BankAccountFields`](../../doc/models/bank-account-fields.md) | Optional | Classifies bank account [field types](#/rest/models/structures/bank-account-fields) |
| `beneficary_name` | `String` | Optional | The name of the person chosen to inherit your account |
| `memo` | `String` | Optional | Optional internal [memo](#/rest/models/structures/memo) not visible to the user |
| `note` | `String` | Optional | [Optional comments](#/rest/models/structures/notes) visible to the user |
| `correlation_token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `card_expiry_date` | `String` | Optional | Date that the card will expire |
| `card_holder_name` | `String` | Optional | Name of the card's owner |
| `card_number` | `String` | Optional | Unique number on the prepaid card |
| `electronic_wallet_account_number` | `String` | Optional | Account number for the electronic wallet |
| `electronic_wallet_account_number_type` | [`ElectronicWalletFields`](../../doc/models/electronic-wallet-fields.md) | Optional | Classifies electronic wallet [field types](#/rest/models/structures/electronic-wallet-fields) |
| `electronic_wallet_government_id` | `String` | Optional | Government ID for the electronic wallet |
| `electronic_wallet_government_id_type` | [`ElectronicWalletFields`](../../doc/models/electronic-wallet-fields.md) | Optional | Classifies electronic wallet [field types](#/rest/models/structures/electronic-wallet-fields) |
| `electronic_wallet_type` | [`ElectronicWalletTypes`](../../doc/models/electronic-wallet-types.md) | Optional | Name of the electronic wallet |
| `mobile_phone_number` | `String` | Optional | - |
| `electronic_funds_transfer_type` | [`ElectronicFundsTransferTypes`](../../doc/models/electronic-funds-transfer-types.md) | Optional | The type of transfer performed |
| `electronic_funds_transfer_failure_type` | [`ElectronicTransferFailureTypes`](../../doc/models/electronic-transfer-failure-types.md) | Optional | The type of failure for a bank transfer |
| `electronic_transfer_status_type` | [`ElectronicTransferStatusTypes`](../../doc/models/electronic-transfer-status-types.md) | Optional | The status of a bank transfer |

## Example (as JSON)

```json
{
  "bankAccountId": "string",
  "bankAccountIdType": "BANK_ACH_ABA",
  "bankName": "string",
  "bankId": "string",
  "bankIdType": "BANK_ACH_ABA",
  "branchAddress": "string",
  "branchCity": "string",
  "branchId": "string",
  "branchName": "string",
  "branchPostalCode": "string",
  "branchPhoneNumber": "string",
  "branchRegion": "string",
  "beneficaryTaxId": "string",
  "beneficaryTaxIdType": "BANK_ACH_ABA",
  "beneficaryName": "string",
  "memo": "string",
  "note": "string",
  "correlationToken": "string",
  "cardExpiryDate": "string",
  "cardHolderName": "string",
  "cardNumber": "483318******4628",
  "electronicWalletAccountNumber": "string",
  "electronicWalletAccountNumberType": "UNDEFINED",
  "electronicWalletGovernmentId": "string",
  "electronicWalletGovernmentIdType": "UNDEFINED",
  "electronicWalletType": "AIRTEL_MONEY",
  "mobilePhoneNumber": "string",
  "electronicFundsTransferType": "MANUAL",
  "electronicFundsTransferFailureType": "INCORRECT_ACCOUNT_NUMBER",
  "electronicTransferStatusType": "IN_PROGRESS"
}
```

