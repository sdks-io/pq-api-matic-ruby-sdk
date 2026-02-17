
# Idv Check Result

## Structure

`IdvCheckResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `user_token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `idv_provider_reference` | `String` | Optional | [Provider reference](#/rest/models/structures/identity-verification-provider-reference) used for performing identity checks for the provider |
| `idv_result` | [`IdentityVerificationResultTypes`](../../doc/models/identity-verification-result-types.md) | Optional | Result type of [verification](#/rest/models/structures/identity-verification-result-type) |
| `idv_sub_result` | [`IdentityVerificationResultSubTypes`](../../doc/models/identity-verification-result-sub-types.md) | Optional | Sub result type of [verification](#/rest/models/structures/identity-verification-sub-result-type) |
| `idv_provider` | [`IdentityVerificationProviders`](../../doc/models/identity-verification-providers.md) | Optional | Provider types of [verification](#/rest/models/structures/identity-verification-provider-type) that can be used for performing identity checks |
| `created_on` | `DateTime` | Optional | Time object was [created](#/rest/models/structures/created-on) |
| `raw` | `String` | Optional | Contains the raw (unprocessed) [output](/#/rest/models/structures/identity-verification-provider-raw-output) from the IDV provider |
| `idv_check_type` | `String` | Optional | [Type](#/rest/models/structures/identity-verification-check-type) of verification used for performing an identity check |
| `idv_disposition` | `String` | Optional | Disposition type of [verification](#/rest/models/structures/identity-verification-disposition-type) |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |
| `meta` | [`MetadataItems`](../../doc/models/metadata-items.md) | Optional | - |

## Example (as JSON)

```json
{
  "token": "string",
  "userToken": "string",
  "idvProviderReference": "string",
  "idvResult": "PASS",
  "idvSubResult": "HARD",
  "idvProvider": "EQUIFAX",
  "createdOn": "2026-02-07T22:23:09.9667010Z",
  "raw": "string",
  "idvCheckType": "string",
  "idvDisposition": "string",
  "links": [
    {
      "href": "string",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
  }
}
```

