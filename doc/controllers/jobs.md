# Jobs

# Jobs

---


The *Jobs* resource allows you to list, create, retrieve, and cancel jobs.

```ruby
jobs_controller = client.jobs
```

## Class Name

`JobsController`

## Methods

* [Cancel Payment Job](../../doc/controllers/jobs.md#cancel-payment-job)
* [Create Payment Job](../../doc/controllers/jobs.md#create-payment-job)
* [List Payment Jobs](../../doc/controllers/jobs.md#list-payment-jobs)
* [Retrieve Payment Job](../../doc/controllers/jobs.md#retrieve-payment-job)


# Cancel Payment Job

Cancel an submitted payment [job](page:resources/jobs).

```ruby
def cancel_payment_job(job_token)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `job_token` | `String` | Template, Required | Auto-generated unique identifier representing a job, prefixed with `jobs-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^jobs-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |

## Requires scope

### server

`modify`

## Response Type

[`PaymentJobResult`](../../doc/models/payment-job-result.md)

## Example Usage

```ruby
job_token = 'jobs-2bbfc967-d12e-4647-a887-d905172fb4bc'

result = jobs_controller.cancel_payment_job(job_token)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# Create Payment Job

Create a [payment](page:resources/jobs).

```ruby
def create_payment_job(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [Gateway Payment Job](../../doc/models/gateway-payment-job.md) \| [Portal Payment Job](../../doc/models/portal-payment-job.md) \| nil | Body, Optional | - |

## Requires scope

### server

`modify`

## Response Type

[`PaymentJobResult`](../../doc/models/payment-job-result.md)

## Example Usage

```ruby
body = GatewayPaymentJob.new(
  DateTimeHelper.from_rfc3339('2022-04-26T15:16:18Z'),
  DateTimeHelper.from_rfc3339('2019-08-24T14:15:22Z'),
  [
    GatewayPaymentJobQuote.new(
      1.02,
      Currencies::USD,
      'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860',
      'dest-631b200f-665d-4dbe-bd01-3063c9dec97d',
      'string',
      'string',
      PaymentPurposes::BONUS,
      'd4b6f130-1d1c-4ce2-903a-0c1ad128f55e'
    )
  ]
)

result = jobs_controller.create_payment_job(body: body)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| 500 | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |
| Default | - | [`ApiErrorResultException`](../../doc/models/api-error-result-exception.md) |


# List Payment Jobs

Retrieve a list of [jobs](page:resources/jobs) that supports filtering, sorting, and pagination through existing mechanisms.

```ruby
def list_payment_jobs(page,
                      page_size,
                      filter: nil,
                      sort: nil,
                      language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Required | Page number of specific page to return<br><br>**Constraints**: `>= 1` |
| `page_size` | `Integer` | Query, Required | Number of items to be displayed per page<br><br>**Constraints**: `>= 1`, `<= 50` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `sort` | `String` | Query, Optional | Sort request results by specific attribute. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`PaymentJobListResult`](../../doc/models/payment-job-list-result.md)

## Example Usage

```ruby
page = 1

page_size = 20

filter = 'string'

sort = 'string'

language = Languages::ENUS

result = jobs_controller.list_payment_jobs(
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


# Retrieve Payment Job

Retrieve a single payment [job](page:resources/jobs).

```ruby
def retrieve_payment_job(job_token,
                         filter: nil,
                         language: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `job_token` | `String` | Template, Required | Auto-generated unique identifier representing a job, prefixed with `jobs-`.<br><br>**Constraints**: *Minimum Length*: `41`, *Maximum Length*: `41`, *Pattern*: `^jobs-[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$` |
| `filter` | `String` | Query, Optional | Filter request results by specific criteria. |
| `language` | [`Languages`](../../doc/models/languages.md) | Query, Optional | Filter results by language type. |

## Requires scope

### server

`readonly`

## Response Type

[`PaymentJobResult`](../../doc/models/payment-job-result.md)

## Example Usage

```ruby
job_token = 'jobs-2bbfc967-d12e-4647-a887-d905172fb4bc'

filter = 'string'

language = Languages::ENUS

result = jobs_controller.retrieve_payment_job(
  job_token,
  filter: filter,
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

