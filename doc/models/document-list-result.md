
# Document List Result

## Structure

`DocumentListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payload` | [`Array[DocumentObject]`](../../doc/models/document-object.md) | Required | - |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Optional | - |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Required | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "payload": [
    {
      "createDate": "2026-02-07T22:23:09.9667010Z",
      "fields": [
        {
          "key": "EXPIRATION_DATE",
          "value": "string"
        }
      ],
      "filename": "exampleFile.jpg",
      "mimeType": "image/jpeg",
      "token": "docu-2053aaad-c1a5-45e2-a2da-f71287f32800",
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

