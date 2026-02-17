
# Create or Update User

## Structure

`CreateOrUpdateUser`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `first_name` | `String` | Optional | First name<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `100` |
| `last_name` | `String` | Optional | Last name<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `100` |
| `date_of_birth` | `DateTime` | Optional | - |
| `tax_resident_status` | [`TaxResidentStatuses`](../../doc/models/tax-resident-statuses.md) | Optional | Tax [resident status type](#/rest/models/structures/tax-resident-status) |
| `phone_number` | `String` | Optional | - |
| `mobile_number` | `String` | Optional | - |
| `phone_number_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `mobile_number_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `address_line_1` | `String` | Optional | Address Line 1<br><br>**Constraints**: *Maximum Length*: `255` |
| `address_line_2` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `address_line_3` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `city` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `region` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `50` |
| `gender` | [`Genders`](../../doc/models/genders.md) | Optional | [Gender](#/rest/models/structures/gender) as a user identifies |
| `user_type` | [`UserTypes`](../../doc/models/user-types.md) | Optional | Account holder's profile [type](#/rest/models/structures/user-type) |
| `language` | [`Languages`](../../doc/models/languages.md) | Optional | The [Language](#/rest/models/structures/language) type in IETF's BCP 47 format |
| `country_of_birth` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `country_of_nationality` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `business_contact_role` | [`BusinessContactRoles`](../../doc/models/business-contact-roles.md) | Optional | Business contact role<br><br>**Constraints**: *Maximum Length*: `20` |
| `government_id_type` | [`GovernmentIds`](../../doc/models/government-ids.md) | Optional | Indicates the type of ID submitted for user verification purposes. |
| `government_id` | `String` | Optional | **Constraints**: *Maximum Length*: `20` |
| `occupation_title` | `String` | Optional | **Constraints**: *Maximum Length*: `20` |
| `occupation_type` | [`Occupations`](../../doc/models/occupations.md) | Optional | [Type of occupation](#/rest/models/structures/occupation) for the user |
| `mailing_address_line_1` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_address_line_2` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_address_line_3` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `mailing_city` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `mailing_region` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `mailing_postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3` |
| `business_address_line_1` | `String` | Optional | Business address line 1<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_address_line_2` | `String` | Optional | Business address line 2<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_address_line_3` | `String` | Optional | Business address line 3<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `business_city` | `String` | Optional | Business city<br><br>**Constraints**: *Maximum Length*: `50` |
| `business_region` | `String` | Optional | Region that the business is based out of |
| `business_postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `50` |
| `premise_number` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `program_token` | `String` | Optional | Auto-generated unique identifier representing a program, prefixed with prog-<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^prog-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `primary_user_token` | `String` | Optional | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Example (as JSON)

```json
{
  "currency": "USD",
  "programUserId": "pdekt",
  "email": "john.doe@email.com",
  "firstName": "John",
  "lastName": "Doe",
  "dateOfBirth": "2026-02-07T22:23:10.0141433Z",
  "taxResidentStatus": "NO",
  "phoneNumber": "+12345678901",
  "mobileNumber": "+12345678901",
  "phoneNumberCountry": "US",
  "mobileNumberCountry": "US",
  "addressLine1": "string",
  "addressLine2": "string",
  "addressLine3": "string",
  "city": "string",
  "region": "string",
  "country": "US",
  "postalCode": "uuk",
  "gender": "FEMALE",
  "userType": "BUSINESS",
  "language": "en-US",
  "countryOfBirth": "US",
  "countryOfNationality": "US",
  "businessContactRole": "MANAGER",
  "governmentIdType": "CURP",
  "governmentId": "string",
  "occupationTitle": "string",
  "occupationType": "ARTS",
  "mailingAddressLine1": "string",
  "mailingAddressLine2": "string",
  "mailingAddressLine3": "string",
  "mailingcountry": "US",
  "mailingCity": "string",
  "mailingRegion": "string",
  "mailingPostalCode": "jgl",
  "businessAddressLine1": "string",
  "businessAddressLine2": "string",
  "businessAddressLine3": "string",
  "businesscountry": "US",
  "businessCity": "string",
  "businessRegion": "string",
  "businessPostalCode": "uuk",
  "premiseNumber": "string",
  "programToken": "prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb",
  "primaryUserToken": "user-2bbfc967-d12e-4647-a887-d905172fb4bc"
}
```

