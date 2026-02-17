
# Delivery Details

The delivery details of a Bank transfer with the minimum and maximum delivery in minutes or the expected delivery time.

## Structure

`DeliveryDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `minimum_delivery_minutes` | `Integer` | Optional | - |
| `maximum_delivery_minutes` | `Integer` | Optional | - |
| `expected_delivery` | [`ExpectedDeliveryTypes`](../../doc/models/expected-delivery-types.md) | Optional | Transfer expected delivery types |
| `expected_delivery_time` | `DateTime` | Optional | The time of the expected delivery. Does not include the date. |

## Example (as JSON)

```json
{
  "minimumDeliveryMinutes": 50,
  "maximumDeliveryMinutes": 50,
  "expectedDelivery": "SAME_DAY",
  "expectedDeliveryTime": "2016-03-13T12:52:32.123Z"
}
```

