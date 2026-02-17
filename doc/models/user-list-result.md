
# User List Result

## Structure

`UserListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[UserObject]`](../../doc/models/user-object.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Required | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
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
      "businesscountry": "US",
      "businessName": "string",
      "businessPostalCode": "uuk",
      "businessRegion": "string",
      "city": "string",
      "country": "US",
      "countryOfBirth": "US",
      "countryOfNationality": "US",
      "createdOn": "2026-02-07T22:23:09.9667010Z",
      "currency": "USD",
      "dateOfBirth": "2026-02-07T22:23:10.0141433Z",
      "email": "john.doe@email.com",
      "employerId": "string",
      "firstName": "John",
      "gender": "FEMALE",
      "governmentId": "string",
      "governmentIdType": "CURP",
      "language": "en-US",
      "lastName": "Doe",
      "mailingAddressLine1": "string",
      "mailingAddressLine2": "string",
      "mailingAddressLine3": "string",
      "mailingCity": "string",
      "mailingcountry": "US",
      "mailingPostalCode": "jgl",
      "mailingRegion": "string",
      "mobileNumber": "+12345678901",
      "mobileNumberCountry": "US",
      "occupationTitle": "string",
      "occupationType": "ARTS",
      "phoneNumber": "+12345678901",
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
  ],
  "meta": {
    "pageNo": "string",
    "pageSize": "string",
    "pageCount": "string",
    "recordCount": "string",
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  },
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

