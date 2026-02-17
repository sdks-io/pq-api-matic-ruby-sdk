
# Event Object

## Structure

`EventObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `token` | `String` | Optional | [Token](#/rest/models/structures/token) representing the resource |
| `can_be_cancelled` | `TrueClass \| FalseClass` | Optional | - |
| `event_requirement_category_type` | [`EventRequirementCategories`](../../doc/models/event-requirement-categories.md) | Optional | - |
| `event_requirement_type` | [`EventRequirements`](../../doc/models/event-requirements.md) | Optional | - |
| `event_status` | [`EventStatuses`](../../doc/models/event-statuses.md) | Optional | Indicates the current verification status type of an event. |
| `event_type` | [`EventTypes`](../../doc/models/event-types.md) | Optional | - |
| `is_complete` | `TrueClass \| FalseClass` | Optional | - |
| `user_action` | [`UserAction`](../../doc/models/user-action.md) | Optional | - |
| `user_impact` | [`UserImpact`](../../doc/models/user-impact.md) | Optional | - |
| `event` | [`EventCategoryTypes`](../../doc/models/event-category-types.md) | Required | The type of Registration tied to a particular event |
| `links` | [`Array[HateoasSelfRef]`](../../doc/models/hateoas-self-ref.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "token": "string",
  "canBeCancelled": true,
  "eventRequirementCategoryType": "ACKNOWLEDGEMENT",
  "eventRequirementType": "ACH_UPGRADE_PII_DETAILS_VALIDATED",
  "eventStatus": "UNDEFINED",
  "eventType": "REQUIRED",
  "isComplete": true,
  "userAction": "NO_ACTION",
  "userImpact": "NO_IMPACT",
  "event": "WALLET_REGISTRATION",
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

