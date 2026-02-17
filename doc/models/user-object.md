
# User Object

## Structure

`UserObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `address_line_1` | `String` | Optional | Address Line 1<br><br>**Constraints**: *Maximum Length*: `255` |
| `address_line_2` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `address_line_3` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `business_address_line_1` | `String` | Optional | Business address line 1<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_address_line_2` | `String` | Optional | Business address line 2<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_address_line_3` | `String` | Optional | Business address line 3<br><br>**Constraints**: *Maximum Length*: `255` |
| `business_address_type` | [`Addresses`](../../doc/models/addresses.md) | Optional | Classifies the [address](#/rest/models/structures/address) type (*Residential*, *Business*, *Billing*, *Shipping*) |
| `business_city` | `String` | Optional | Business city<br><br>**Constraints**: *Maximum Length*: `50` |
| `business_contact_role` | [`BusinessContactRoles`](../../doc/models/business-contact-roles.md) | Optional | Business contact role<br><br>**Constraints**: *Maximum Length*: `20` |
| `business_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `business_name` | `String` | Optional | Business name |
| `business_postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `50` |
| `business_region` | `String` | Optional | Region that the business is based out of |
| `city` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `country_of_birth` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `country_of_nationality` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `created_on` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `currency` | [`Currencies`](../../doc/models/currencies.md) | Optional | [Currency code type](#/rest/models/structures/country) for the object<br><br>**Default**: `Currencies::USD` |
| `date_of_birth` | `DateTime` | Optional | - |
| `email` | `String` | Optional | Contact [email address](#/rest/models/structures/email-address) for the user account for the user account<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `100`, *Pattern*: `^.+@.+\..+` |
| `employer_id` | `String` | Optional | Employer id |
| `first_name` | `String` | Optional | First name<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `100` |
| `gender` | [`Genders`](../../doc/models/genders.md) | Optional | [Gender](#/rest/models/structures/gender) as a user identifies |
| `government_id` | `String` | Optional | **Constraints**: *Maximum Length*: `20` |
| `government_id_type` | [`GovernmentIds`](../../doc/models/government-ids.md) | Optional | Indicates the type of ID submitted for user verification purposes. |
| `language` | [`Languages`](../../doc/models/languages.md) | Optional | The [Language](#/rest/models/structures/language) type in IETF's BCP 47 format |
| `last_name` | `String` | Optional | Last name<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `100` |
| `mailing_address_line_1` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_address_line_2` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_address_line_3` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `mailing_city` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `mailing_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `mailing_postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3` |
| `mailing_region` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `mobile_number` | `String` | Optional | - |
| `mobile_number_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `occupation_title` | `String` | Optional | **Constraints**: *Maximum Length*: `20` |
| `occupation_type` | [`Occupations`](../../doc/models/occupations.md) | Optional | [Type of occupation](#/rest/models/structures/occupation) for the user |
| `phone_number` | `String` | Optional | - |
| `phone_number_country` | [`Countries`](../../doc/models/countries.md) | Optional | Throughout the PayQuicker API, the usage of the 2-letter alpha code is used in place of the country name, e.g., for bank country or residential country.<br><br>The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for convenience. |
| `postal_code` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `50` |
| `program_user_id` | `String` | Optional | [Program identifier](#/rest/models/structures/program-user-id) for the user<br><br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `100` |
| `region` | `String` | Optional | **Constraints**: *Maximum Length*: `50` |
| `status` | [`UserStatuses`](../../doc/models/user-statuses.md) | Optional | Status of the user [User status type](#/rest/models/structures/user-status) |
| `tax_resident_status` | [`TaxResidentStatuses`](../../doc/models/tax-resident-statuses.md) | Optional | Tax [resident status type](#/rest/models/structures/tax-resident-status) |
| `user_type` | [`UserTypes`](../../doc/models/user-types.md) | Optional | Account holder's profile [type](#/rest/models/structures/user-type) |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "string",
  "addressLine1": "string",
  "addressLine2": "string",
  "addressLine3": "string",
  "businessAddressLine1": "string",
  "businessAddressLine2": "string",
  "businessAddressLine3": "string",
  "businessAddressType": "BUSINESS",
  "businessCity": "string",
  "businessContactRole": "MANAGER",
  "businessCountry": "US",
  "businessName": "string",
  "businessPostalCode": "uuk",
  "businessRegion": "string",
  "city": "string",
  "country": "US",
  "countryOfBirth": "US",
  "countryOfNationality": "US",
  "createdOn": "02/07/2026 22:23:09",
  "currency": "USD",
  "dateOfBirth": "02/07/2026 22:23:10",
  "email": "john.doe@email.com",
  "employerId": "string",
  "firstName": "John",
  "gender": "FEMALE",
  "governmentId": "string",
  "governmentIdType": "CURP",
  "language": "cs-CZ",
  "lastName": "q",
  "mailingAddressLine1": "string",
  "mailingAddressLine2": "string",
  "mailingAddressLine3": "string",
  "mailingCity": "string",
  "mailingCountry": "US",
  "mailingPostalCode": "jgl",
  "mailingRegion": "string",
  "mobileNumber": "string",
  "mobileNumberCountry": "US",
  "occupationTitle": "string",
  "occupationType": "ARTS",
  "phoneNumber": "string",
  "phoneNumberCountry": "US",
  "postalCode": "uuk",
  "programUserId": "pdekt",
  "region": "string",
  "status": "ACTIVE",
  "taxResidentStatus": "NO",
  "userType": "BUSINESS",
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

