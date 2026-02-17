
# Create or Update Document

## Structure

`CreateOrUpdateDocument`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fields` | [`CreateOrUpdateDocumentFields`](../../doc/models/create-or-update-document-fields.md) | Optional | - |
| `upload` | `Object` | Optional | Document to be uploaded |

## Example (as JSON)

```json
{
  "fields": {
    "fields": [
      {
        "key": "EXPIRATION_DATE",
        "value": "string"
      }
    ]
  },
  "upload": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

