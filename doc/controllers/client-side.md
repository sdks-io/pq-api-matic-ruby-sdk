# Client Side

```ruby
client_side_controller = client.client_side
```

## Class Name

`ClientSideController`

## Methods

* [Create Card Data Token](../../doc/controllers/client-side.md#create-card-data-token)
* [Create Card PIN Token](../../doc/controllers/client-side.md#create-card-pin-token)
* [Retrieve Card Data](../../doc/controllers/client-side.md#retrieve-card-data)
* [Retrieve Card PIN](../../doc/controllers/client-side.md#retrieve-card-pin)
* [Update Card PIN](../../doc/controllers/client-side.md#update-card-pin)


# Create Card Data Token

Generate a token used to reveal [prepaid card](page:resources/prepaid-cards) information in the form of image data (base64) or JSON.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_card_data_token(user_token,
                           destination_token,
                           format,
                           side: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `format` | [`PrepaidCardDataType`](../../doc/models/prepaid-card-data-type.md) | Query, Required | Desired format for the prepaid card data. |
| `side` | [`PrepaidCardImageSide`](../../doc/models/prepaid-card-image-side.md) | Query, Optional | Side to specify when retrieving a prepaid card's image data. *Required if IMAGE format specified. |

## Response Type

[`PrepaidCardDataTokenResult`](../../doc/models/prepaid-card-data-token-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

format = PrepaidCardDataType::TEXT

side = PrepaidCardImageSide::FRONT

result = client_side_controller.create_card_data_token(
  user_token,
  destination_token,
  format,
  side: side
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "cardProcessorType": "QOLO",
  "resourceValue": "b61bc8708ab84870a2096398b60269d5",
  "token": "iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+dxfeP7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRIKK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO14jwR4BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS",
  "tokenPurposeType": "CARD_OPERATION",
  "url": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pci?token=iEureKuLW1gZQ7d3%2f2ijX4%2b6bDZuUwpp2QmhPfedarncS2Cde1Ebmby%2bdxfeP7%2bIaty9YYCLFwY42HHOm03dliH7Jp0Yo%2fsjOb%2fFmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRIKK8%2bNcPVjjb%2b0gfqFAI52Emk0P%2bVPaBZ2NgsENV%2fI4MuIkWsUXha3QZh49a0EK3wO14jwR4BosY%2frk0%2f9F5uJEWUjv8gvPej%2bdCFyMnybjj6jPK9f%2fgFlPUYVHuS&format=TEXT",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pci/iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+dxfeP7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRIKK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO14jwR4BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Create Card PIN Token

Retrieve one part of a two-part token required to reveal or set a client side [prepaid card](page:resources/prepaid-cards) PIN.

```ruby
def create_card_pin_token(user_token,
                          destination_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`PrepaidCardPinTokenResult`](../../doc/models/prepaid-card-pin-token-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

result = client_side_controller.create_card_pin_token(
  user_token,
  destination_token
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "cardProcessorType": "QOLO",
  "cardPinToken": "/YnZvwn9Q5TczQhubfjB8Sq1inIVtMGnKT9ywAcan60uavrMNeMAR1RGyuWj7N8XOiy7W2QrEXGzM/668UIJMzTFOlVqSrkQSn22ErWCb5BQTYXl04sF1nW73u8aykRHi1c4lGhu3kSrTKxqqN/GtEJTcDV+SfBj/huWQZrdWTxdbnN2XX5jqNkGUHbfkFU0s9oxxwX6cYYreBbtmo0WFSLS0o2RT+LGAtiEqgPvT5T6NlZlNa+TF17gbgxHi0sG",
  "token": "dest-b61bc870-8ab8-4870-a209-6398b60269d5",
  "url": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pin?token=%2fYnZvwn9Q5TczQhubfjB8Sq1inIVtMGnKT9ywAcan60uavrMNeMAR1RGyuWj7N8XOiy7W2QrEXGzM%2f668UIJMzTFOlVqSrkQSn22ErWCb5BQTYXl04sF1nW73u8aykRHi1c4lGhu3kSrTKxqqN%2fGtEJTcDV%2bSfBj%2fhuWQZrdWTxdbnN2XX5jqNkGUHbfkFU0s9oxxwX6cYYreBbtmo0WFSLS0o2RT%2bLGAtiEqgPvT5T6NlZlNa%2bTF17gbgxHi0sG",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pin",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Retrieve Card Data

Return [prepaid card](page:resources/prepaid-cards) data in the form of image data, text, or both.

```ruby
def retrieve_card_data(user_token,
                       destination_token,
                       format,
                       side: nil,
                       body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `format` | [`PrepaidCardDataType`](../../doc/models/prepaid-card-data-type.md) | Query, Required | Desired format for the prepaid card data. |
| `side` | [`PrepaidCardImageSide`](../../doc/models/prepaid-card-image-side.md) | Query, Optional | Side to specify when retrieving a prepaid card's image data. *Required if IMAGE format specified. |
| `body` | [`RetrieveCardData`](../../doc/models/retrieve-card-data.md) | Body, Optional | - |

## Response Type

[`PrepaidCardDataResult`](../../doc/models/prepaid-card-data-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

format = PrepaidCardDataType::TEXT

body = RetrieveCardData.new(
  'iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+dxfeP7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRIKK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO14jwR4BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS'
)

result = client_side_controller.retrieve_card_data(
  user_token,
  destination_token,
  format,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "cardNumber": 4833180000103940,
  "cvvNumber": "709",
  "expiration": "04/25",
  "nameOnCard": "SIDNEY MAYER",
  "token": "dest-b61bc870-8ab8-4870-a209-6398b60269d5",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pci",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Retrieve Card PIN

Reveal a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid card](page:resources/prepaid-cards).

```ruby
def retrieve_card_pin(user_token,
                      destination_token,
                      body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`RetrieveCardPin`](../../doc/models/retrieve-card-pin.md) | Body, Optional | - |

## Response Type

[`PrepaidCardPinResult`](../../doc/models/prepaid-card-pin-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = RetrieveCardPin.new(
  'IzPQ55SGbTumVRn7xscpjL9zgFV29503mQ+GJuKAzCYl8DhLkJKZSBqPLWx6rBf/ky9FRqZCptCCVmZ3ZT+sR6sVmBDT9vfK+8Bbv/6Kftz+Pu9DJOXTwd7Hcs9PuaU5qirAq9rp3P5pKL5Ilg+ZkU8b7TP2ZMBIchxYHZG5aJ3b96BdlMyEB4bu1UATKOjS2+vYFLUFprtwbnwp94QuaiFALG9NMClQ3CqWJqot/Z1DSbTnPqIq+BRzA8Xdbh1j'
)

result = client_side_controller.retrieve_card_pin(
  user_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "cardPin": "4444",
  "token": "dest-b61bc870-8ab8-4870-a209-6398b60269d5",
  "links": [
    {
      "href": "https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398b60269d5/pin",
      "params": {
        "rel": "self"
      }
    }
  ],
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Update Card PIN

Set a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid card](page:resources/prepaid-cards), if supported by program.

```ruby
def update_card_pin(user_token,
                    destination_token,
                    body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_token` | `String` | Template, Required | Auto-generated unique identifier representing a user, prefixed with `user-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^user-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `destination_token` | `String` | Template, Required | Auto-generated unique identifier representing a transfer destination, including prepaid cards, bank accounts, paper checks, and other users, prefixed with `dest-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^dest-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`UpdateCardPin`](../../doc/models/update-card-pin.md) | Body, Optional | - |

## Response Type

[`OperationResult`](../../doc/models/operation-result.md)

## Example Usage

```ruby
user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

body = UpdateCardPin.new(
  '05OQkdzRkzjP+qlhTrsko00cb58gGERv+g1Nd7/xK+Ol2+vJaOJnjQgdFA0Jqf5TFdYZrjO7dw/2l1V9k8xNGVr3MyKHrQh/CZ+HMz2gdI3VkJVj0x50PStECnN0t1P4eXTZqmh93O24fXRyvLn8XvmfyV7nF94IEwzwVe6Xdvl6mHQyyyNwtSNKHtNGGpM88hoX5PAvbqgYrsy5tBYi3CcN+Ld5Ia8+nFq9pDAXs6dCLsidU9XJRzLLcWWdhzxR',
  '4444'
)

result = client_side_controller.update_card_pin(
  user_token,
  destination_token,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "result": true,
  "meta": {
    "timezone": "GMT",
    "requestRef": "request-reference-value"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |

