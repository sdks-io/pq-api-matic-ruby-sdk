
# List Metadata

## Structure

`ListMetadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page_no` | `String` | Required | **Default**: `'1'` |
| `page_size` | `String` | Required | **Default**: `'10'` |
| `page_count` | `String` | Required | **Default**: `'1'` |
| `record_count` | `String` | Required | - |
| `timezone` | `String` | Required | Timezone of the datetime objects in the response |
| `request_ref` | `String` | Required | - |

## Example (as JSON)

```json
{
  "pageNo": "string",
  "pageSize": "string",
  "pageCount": "string",
  "recordCount": "string",
  "timezone": "GMT",
  "requestRef": "20260207T231757Z-r1d65bb46d495mgjhC1BL1qvx400000004rg00000000c2uh"
}
```

