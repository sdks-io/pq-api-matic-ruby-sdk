
# Bank Account Fields

Classifies bank account [field types](#/rest/models/structures/bank-account-fields)

## Enumeration

`BankAccountFields`

## Fields

| Name | Description |
|  --- | --- |
| `BANK_ACH_ABA` | The nine-digit code based on the U.S. Bank location where the account was opened. |
| `BANK_BBAN` | The code that identifies an individual account, at a specific financial institution, in a particular country, often referred to as the acount number. |
| `BANK_BRANCH_CODE` | A code of a bank helps customers and bankers identify a particular bank branch. |
| `BANK_BRANCH_NAME` | Name of branch for the actual financial institution. For example,`Bank of America`. |
| `BANK_BSB_CODE` | The 6-digit number used to identify the individual branch of a financial institution used in addition to the bank account number to identify the recipient of a transfer. For example,`082902`. where: `08` is the two-digit code for NAB bank. `2` is the branch is located in Australian Capital Territory. `902` is the NAB branch in Canberra City. |
| `BANK_CITY` | The city in which the bank or financial institution associated with an account is located. |
| `BANK_CLABE` | CLABE (Clace Bancaria Estandarizada) The 18-digit account code containing the payee's bank account number. For example, `014027000000000008`. |
| `BANK_CODE` | Bank code of bank assigned to a bank. |
| `BANK_CURP` | The ID number provided by the Mexican government to Mexican citizens and residents |
| `BANK_IBAN` | The standard international numbering system that identifies an overseas bank account. The number starts with a two-digit country code, then two numbers, followed by several more alphanumeric characters. For example,`Norway: NO 93 8601 1117947`. |
| `BANK_NAME` | Name of actual financial institution. For example,`Bank of America`. |
| `BANK_NON_SWIFT_BIC` | The 8- or 11-digit Business Identifier Code (BIC) for a bank that does not allow for sending and receiving financial transaction information. For example,`AAAABBCCDDD`. |
| `BANK_NUBAN` | Nigerian Uniform Bank Account Number (NUBAN) The 10-digit standard international numbering system that identifies a Nigerian bank account. For example, `0000013679`. where: `000001367` is the serial number (the first 9 digits) and is used to indicate which bank the NUBAN is associated with, as well as to point to a specific bank account at that bank. `9` (the last digit) is the [check digit](https://en.wikipedia.org/wiki/Check_digit) that determines whether the code in question is valid. |
| `BANK_PHONE_NUMBER` | The phone number for the actual financial institution. |
| `BANK_POSTAL_CODE` | The 5-digit postal code of the account owner's permanent residence. For example, `50314`. |
| `BANK_PURPOSE_OF_PAYMENT_CODE` | The code that represents the purpose for initiating a payment to a foreign country. For example,`/BANK/FUND TR`which is a cross-border fund transfer between banks. |
| `BANK_REGION` | The two-letter region [ISO abbreviation code](https://en.wikipedia.org/wiki/ISO_3166-1) of the bank's physical address. |
| `BANK_RFC` | Resident Foreign Currency (RFC)The account maintained in foreign currencies for NRIs who have returned to India and hold funds in foreign currency. For example, `USD` and `GBP`. |
| `BANK_SORT_CODE` | Identifies both the bank and the branch where the account is held. Sort codes used to route money transfers between financial institutions in the United Kingdom and in the Republic of Ireland. For example, `12-34-56`. |
| `BANK_SSN` | TO BE DONE |
| `BANK_STREET_ADDRESS` | The bank address's most specific details, like `street number`, `street name`, and `building name`. |
| `BANK_SWIFT_BIC` | The 8- or 11-digit Business Identifier Code (BIC) for a bank that allows for sending and receiving financial transaction information. For example, `AAAABBCCDDD` where: `AAAA` is the 4-character bank code. `BB` is the 2-character country code. `CC` is the 2-character location code. `DD` is the 3-character branch code. |
| `BANK_TRANSIT_CODE` | The 9-digit code that identifies a specific financial institution. For example, `XXXXYYYYC` where: `XXXX` is the 4-digit Federal Reserve Routing Symbol. `YYYY` is the 4-digit ABA Institution Identifier. `C` is the 1-digit check digit. |
| `BANK_VALUE_ADD_TAX` | The 9-digit value-added tax number for the bank that is designed to tax only the value added by a business on top of the services and goods it can purchase. |
| `BENEFICIARY_ACCOUNT_NUMBER` | The unique identifier for the beneficial owner. For example,`caa81a5f-ec1e-4559-8b32-d90655bfd03c`. |
| `BENEFICIARY_ADDRESS` | The beneficial owner's residential address. |
| `BENEFICIARY_NAME` | The legal full name for the beneficial owner. |
| `BENEFICIARY_PHONE_NUMBER` | The phone number for the beneficial owner. |
| `BENEFICIARY_TAX_ID` | The tax ID for the beneficial owner. |
| `UNDEFINED` | Undefined or unrecognized bank account field. |

## Example

```
BANK_ACH_ABA
```

