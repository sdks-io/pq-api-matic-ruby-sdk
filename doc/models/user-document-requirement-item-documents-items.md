
# User Document Requirement Item Documents Items

## Structure

`UserDocumentRequirementItemDocumentsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `example_image` | `String` | Optional | Full path of the URI used for this object |
| `supplemental_documents` | [`Array[UserDocReqItemDocsItemsSupplementalDocsItems]`](../../doc/models/user-doc-req-item-docs-items-supplemental-docs-items.md) | Optional | - |
| `metadata` | [`Array[UserDocReqItemDocsItemsMetadataItems]`](../../doc/models/user-doc-req-item-docs-items-metadata-items.md) | Optional | - |
| `status` | [`DocumentStatusTypes`](../../doc/models/document-status-types.md) | Optional | Status Type of a document |
| `type` | [`DocumentTypes`](../../doc/models/document-types.md) | Optional | Indicates the enums for KYC. |

## Example (as JSON)

```json
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
```

