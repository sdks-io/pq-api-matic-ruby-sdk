# Spendback Refunds

```ruby
spendback_refunds_controller = client.spendback_refunds
```

## Class Name

`SpendbackRefundsController`

## Methods

* [Accept Spendback Refund Quote](../../doc/controllers/spendback-refunds.md#accept-spendback-refund-quote)
* [Cancel Spendback Refund Quote](../../doc/controllers/spendback-refunds.md#cancel-spendback-refund-quote)
* [Create Spendback Refund Quote](../../doc/controllers/spendback-refunds.md#create-spendback-refund-quote)
* [List Spendback Refunds](../../doc/controllers/spendback-refunds.md#list-spendback-refunds)
* [Retrieve Spendback Refund](../../doc/controllers/spendback-refunds.md#retrieve-spendback-refund)


# Accept Spendback Refund Quote

Accept a spendback return quote.

```ruby
def accept_spendback_refund_quote(spendback_token,
                                  refund_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `spendback_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back transaction and quote, prefixed with `spnd-`.<br><br>**Constraints**: *Pattern*: `^spnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `refund_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back refund transaction and quote, prefixed with `rfnd-`.<br><br>**Constraints**: *Pattern*: `^rfnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`SpendbackRefundResult`](../../doc/models/spendback-refund-result.md)

## Example Usage

```ruby
spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'

result = spendback_refunds_controller.accept_spendback_refund_quote(
  spendback_token,
  refund_token
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Cancel Spendback Refund Quote

Cancel an spendback refund quote.

```ruby
def cancel_spendback_refund_quote(spendback_token,
                                  refund_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `spendback_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back transaction and quote, prefixed with `spnd-`.<br><br>**Constraints**: *Pattern*: `^spnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `refund_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back refund transaction and quote, prefixed with `rfnd-`.<br><br>**Constraints**: *Pattern*: `^rfnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`SpendbackRefundResult`](../../doc/models/spendback-refund-result.md)

## Example Usage

```ruby
spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'

result = spendback_refunds_controller.cancel_spendback_refund_quote(
  spendback_token,
  refund_token
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Create Spendback Refund Quote

Perform a [spendback](page:resources/spendbacks) refund for a partial amount.

```ruby
def create_spendback_refund_quote(spendback_token,
                                  body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `spendback_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back transaction and quote, prefixed with `spnd-`.<br><br>**Constraints**: *Pattern*: `^spnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `body` | [`CreateSpendbackRefundQuote`](../../doc/models/create-spendback-refund-quote.md) | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`SpendbackRefundResult`](../../doc/models/spendback-refund-result.md)

## Example Usage

```ruby
spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

body = CreateSpendbackRefundQuote.new(
  1.13
)

result = spendback_refunds_controller.create_spendback_refund_quote(
  spendback_token,
  body: body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# List Spendback Refunds

Retrieve a list of [spendbacks](page:resources/spendbacks) refunds that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_spendback_refunds(spendback_token,
                           page,
                           page_size,
                           filter: nil,
                           sort: nil,
                           language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `spendback_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back transaction and quote, prefixed with `spnd-`.<br><br>**Constraints**: *Pattern*: `^spnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`SpendbackRefundListResult`](../../doc/models/spendback-refund-list-result.md)

## Example Usage

```ruby
spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = spendback_refunds_controller.list_spendback_refunds(
  spendback_token,
  page,
  page_size,
  filter: filter,
  sort: sort,
  language: language
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Retrieve Spendback Refund

Retrieve a single spendback refund using the rfnd token

```ruby
def retrieve_spendback_refund(spendback_token,
                              refund_token,
                              page,
                              page_size,
                              filter: nil,
                              sort: nil,
                              language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `spendback_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back transaction and quote, prefixed with `spnd-`.<br><br>**Constraints**: *Pattern*: `^spnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `refund_token` | `String` | Template, Required | Auto-generated unique identifier representing an individual spend back refund transaction and quote, prefixed with `rfnd-`.<br><br>**Constraints**: *Pattern*: `^rfnd-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`SpendbackRefundResult`](../../doc/models/spendback-refund-result.md)

## Example Usage

```ruby
spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'

page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = spendback_refunds_controller.retrieve_spendback_refund(
  spendback_token,
  refund_token,
  page,
  page_size,
  filter: filter,
  sort: sort,
  language: language
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |

