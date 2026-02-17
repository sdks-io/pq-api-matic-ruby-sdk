
# Document Requirements List Result

## Structure

`DocumentRequirementsListResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | [`Array[UserDocumentRequirementItem]`](../../doc/models/user-document-requirement-item.md) | Optional | - |
| `meta` | [`ListMetadata`](../../doc/models/list-metadata.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": [
    {
      "countryOfBirth": "string",
      "countryOfNationality": "string",
      "documents": [
        {
          "exampleImage": "string",
          "supplementalDocuments": [
            {
              "exampleImage": "string",
              "status": "NOT_PROVIDED",
              "type": "UNDEFINED"
            }
          ],
          "metadata": [
            {
              "dataType": "string",
              "fieldType": "string",
              "name": [
                {
                  "language": "string",
                  "translation": "string"
                }
              ]
            }
          ],
          "status": "NOT_PROVIDED",
          "type": "UNDEFINED"
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
  }
}
```

