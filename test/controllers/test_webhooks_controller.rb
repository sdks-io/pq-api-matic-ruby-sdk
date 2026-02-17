# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class WebhooksControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.webhooks
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of all [webhook subscriptions](page:resources/webhooks) that supports filtering, sorting, and pagination through existing mechanisms
  #
  def test_list_subscriptions
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_subscriptions(page, page_size, filter: filter,
                                            sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"token":"webh-4cdcb012-8b3f-453f-af4f-c29e6091db92","creat'\
      'ed":"2020-07-24T14:53:08Z","lastUpdated":"2021-08-09T18:31:55Z","url":"'\
      'https://api.sandbox.payquicker.io/integrations/internal/twohundred","na'\
      'mespace":"PREPAIDCARDS.UPDATED.STATUS.CLOSEDSTOLEN","status":"SUBSCRIBE'\
      'D","links":[{"href":"https://platform.mypayquicker.dev/api/v2/webhooks/'\
      'webh-4cdcb012-8b3f-453f-af4f-c29e6091db92","params":{"rel":"self"}}]},{'\
      '"token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-'\
      '24T14:53:08Z","lastUpdated":"2021-08-09T18:31:55Z","url":"https://faweb'\
      'hookreceiver.azurewebsites.net/api/receive","namespace":"PAPERCHECKS.UP'\
      'DATED.STATUS.REDEEMED","status":"SUBSCRIBED","links":[{"href":"https://'\
      'platform.mypayquicker.dev/api/v2/webhooks/webh-4de2d5d8-f04a-4fe1-bff0-'\
      '8d343295f24e","params":{"rel":"self"}}]},{"namespace":"USERS.CREATED","'\
      'status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e"'\
      ',"created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z",'\
      '"url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"name'\
      'space":"USERS.UPDATED.STATUS.REGISTRATIONINPROGRESS","status":"AVAILABL'\
      'E","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-'\
      '07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fa'\
      'webhookreceiver.azurewebsites.net/api/receive"},{"namespace":"USERS.UPD'\
      'ATED.STATUS.REGISTRATIONCOMPLETE","status":"AVAILABLE","token":"webh-4d'\
      'e2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","l'\
      'astUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azu'\
      'rewebsites.net/api/receive"},{"namespace":"USERS.UPDATED.KYC.REQUIRED",'\
      '"status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e'\
      '","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z"'\
      ',"url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"nam'\
      'espace":"USERS.UPDATED.KYC.PROVIDED","status":"AVAILABLE","token":"webh'\
      '-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z"'\
      ',"lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.'\
      'azurewebsites.net/api/receive"},{"namespace":"USERS.UPDATED.KYC.REJECTE'\
      'D","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f'\
      '24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:0'\
      '8Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"'\
      'namespace":"USERS.UPDATED.KYC.APPROVED","status":"AVAILABLE","token":"w'\
      'ebh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:0'\
      '8Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiv'\
      'er.azurewebsites.net/api/receive"},{"namespace":"PREPAIDCARDS.CREATED",'\
      '"status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e'\
      '","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z"'\
      ',"url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"nam'\
      'espace":"PREPAIDCARDS.UPDATED.STATUS.ACTIVE","status":"AVAILABLE","toke'\
      'n":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14'\
      ':53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookr'\
      'eceiver.azurewebsites.net/api/receive"},{"namespace":"PREPAIDCARDS.UPDA'\
      'TED.STATUS.CLOSED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe'\
      '1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"20'\
      '20-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/'\
      'api/receive"},{"namespace":"PREPAIDCARDS.UPDATED.STATUS.CLOSEDLOST","st'\
      'atus":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","'\
      'created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","u'\
      'rl":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"namesp'\
      'ace":"PREPAIDCARDS.UPDATED.STATUS.PENDINGACTIVATION","status":"AVAILABL'\
      'E","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-'\
      '07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fa'\
      'webhookreceiver.azurewebsites.net/api/receive"},{"namespace":"PREPAIDCA'\
      'RDS.UPDATED.STATUS.PENDINGORDER","status":"AVAILABLE","token":"webh-4de'\
      '2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","la'\
      'stUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azur'\
      'ewebsites.net/api/receive"},{"namespace":"PREPAIDCARDS.UPDATED.STATUS.S'\
      'USPENDED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d'\
      '343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T'\
      '14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/recei'\
      've"},{"namespace":"BANKACCOUNTS.CREATED","status":"AVAILABLE","token":"'\
      'webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:'\
      '08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookrecei'\
      'ver.azurewebsites.net/api/receive"},{"namespace":"BANKACCOUNTS.UPDATED.'\
      'STATUS.APPROVED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-'\
      'bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020'\
      '-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/ap'\
      'i/receive"},{"namespace":"BANKACCOUNTS.UPDATED.STATUS.DELETED","status"'\
      ':"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","creat'\
      'ed":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"'\
      'https://fawebhookreceiver.azurewebsites.net/api/receive"},{"namespace":'\
      '"BANKACCOUNTS.UPDATED.STATUS.COMPLIANCEHOLD","status":"AVAILABLE","toke'\
      'n":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14'\
      ':53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookr'\
      'eceiver.azurewebsites.net/api/receive"},{"namespace":"BANKACCOUNTS.UPDA'\
      'TED.DETAILS.MODIFIED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-'\
      '4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":'\
      '"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.n'\
      'et/api/receive"},{"namespace":"PAPERCHECKS.CREATED","status":"AVAILABLE'\
      '","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-0'\
      '7-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://faw'\
      'ebhookreceiver.azurewebsites.net/api/receive"},{"namespace":"PAPERCHECK'\
      'S.UPDATED.STATUS.INPROGRESS","status":"AVAILABLE","token":"webh-4de2d5d'\
      '8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUp'\
      'dated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azureweb'\
      'sites.net/api/receive"},{"namespace":"PAPERCHECKS.UPDATED.STATUS.CANCEL'\
      'LED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d34329'\
      '5f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53'\
      ':08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},'\
      '{"namespace":"PAPERCHECKS.UPDATED.DETAILS.MODIFIED","status":"AVAILABLE'\
      '","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-0'\
      '7-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://faw'\
      'ebhookreceiver.azurewebsites.net/api/receive"},{"namespace":"TRANSFERQU'\
      'OTES.CREATED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff'\
      '0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07'\
      '-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/r'\
      'eceive"},{"namespace":"TRANSFERQUOTES.ACCEPTED","status":"AVAILABLE","t'\
      'oken":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24'\
      'T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebho'\
      'okreceiver.azurewebsites.net/api/receive"},{"namespace":"TRANSFERQUOTES'\
      '.VOIDED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d3'\
      '43295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T1'\
      '4:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receiv'\
      'e"},{"namespace":"TRANSFERQUOTES.CANCELLED","status":"AVAILABLE","token'\
      '":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:'\
      '53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookre'\
      'ceiver.azurewebsites.net/api/receive"},{"namespace":"PAYMENTQUOTES.CREA'\
      'TED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d34329'\
      '5f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53'\
      ':08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},'\
      '{"namespace":"PAYMENTQUOTES.ACCEPTED","status":"AVAILABLE","token":"web'\
      'h-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z'\
      '","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver'\
      '.azurewebsites.net/api/receive"},{"namespace":"PAYMENTQUOTES.VOIDED","s'\
      'tatus":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e",'\
      '"created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","'\
      'url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"names'\
      'pace":"PAYMENTQUOTES.CANCELLED","status":"AVAILABLE","token":"webh-4de2'\
      'd5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","las'\
      'tUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azure'\
      'websites.net/api/receive"},{"namespace":"SPENDBACKQUOTES.CREATED","stat'\
      'us":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","cr'\
      'eated":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url'\
      '":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"namespac'\
      'e":"SPENDBACKQUOTES.ACCEPTED","status":"AVAILABLE","token":"webh-4de2d5'\
      'd8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastU'\
      'pdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewe'\
      'bsites.net/api/receive"},{"namespace":"SPENDBACKQUOTES.VOIDED","status"'\
      ':"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","creat'\
      'ed":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"'\
      'https://fawebhookreceiver.azurewebsites.net/api/receive"},{"namespace":'\
      '"SPENDBACKQUOTES.CANCELLED","status":"AVAILABLE","token":"webh-4de2d5d8'\
      '-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpd'\
      'ated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebs'\
      'ites.net/api/receive"},{"namespace":"RECEIPTS.CREATED","status":"AVAILA'\
      'BLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"202'\
      '0-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://'\
      'fawebhookreceiver.azurewebsites.net/api/receive"},{"namespace":"RECEIPT'\
      'S.UPDATED.STATUS.COMPLETED","status":"AVAILABLE","token":"webh-4de2d5d8'\
      '-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpd'\
      'ated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebs'\
      'ites.net/api/receive"},{"namespace":"RECEIPTS.UPDATED.STATUS.CANCELLED"'\
      ',"status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24'\
      'e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z'\
      '","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"na'\
      'mespace":"RECEIPTS.UPDATED.STATUS.REFUNDED","status":"AVAILABLE","token'\
      '":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:'\
      '53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookre'\
      'ceiver.azurewebsites.net/api/receive"},{"namespace":"RECEIPTS.UPDATED.S'\
      'TATUS.FAILED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff'\
      '0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07'\
      '-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/r'\
      'eceive"},{"namespace":"RECEIPTS.UPDATED.STATUS.PENDING","status":"AVAIL'\
      'ABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"20'\
      '20-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https:/'\
      '/fawebhookreceiver.azurewebsites.net/api/receive"},{"namespace":"RECEIP'\
      'TS.UPDATED.STATUS.SCHEDULED","status":"AVAILABLE","token":"webh-4de2d5d'\
      '8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUp'\
      'dated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.azureweb'\
      'sites.net/api/receive"},{"namespace":"RECEIPTS.UPDATED.STATUS.PROCESSIN'\
      'G","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f'\
      '24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:0'\
      '8Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"},{"'\
      'namespace":"RECEIPTS.UPDATED.STATUS.REVERSED","status":"AVAILABLE","tok'\
      'en":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T1'\
      '4:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhook'\
      'receiver.azurewebsites.net/api/receive"},{"namespace":"RECEIPTS.UPDATED'\
      '.DETAILS.MODIFIED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe'\
      '1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"20'\
      '20-07-24T14:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/'\
      'api/receive"},{"namespace":"USEREVENTS.STARTED","status":"AVAILABLE","t'\
      'oken":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24'\
      'T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebho'\
      'okreceiver.azurewebsites.net/api/receive"},{"namespace":"USEREVENTS.UPD'\
      'ATED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d3432'\
      '95f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:5'\
      '3:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receive"}'\
      ',{"namespace":"USEREVENTS.COMPLETED","status":"AVAILABLE","token":"webh'\
      '-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","created":"2020-07-24T14:53:08Z"'\
      ',"lastUpdated":"2020-07-24T14:53:08Z","url":"https://fawebhookreceiver.'\
      'azurewebsites.net/api/receive"},{"namespace":"RECEIPTS.UPDATED.STATUS.R'\
      'ETURNED","status":"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d3'\
      '43295f24e","created":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T1'\
      '4:53:08Z","url":"https://fawebhookreceiver.azurewebsites.net/api/receiv'\
      'e"},{"namespace":"PREPAIDCARDS.UPDATED.STATUS.PENDINGRELEASE","status":'\
      '"AVAILABLE","token":"webh-4de2d5d8-f04a-4fe1-bff0-8d343295f24e","create'\
      'd":"2020-07-24T14:53:08Z","lastUpdated":"2020-07-24T14:53:08Z","url":"h'\
      'ttps://fawebhookreceiver.azurewebsites.net/api/receive"}],"meta":{"page'\
      'No":"1","pageSize":"100","pageCount":"0","recordCount":"0","timezone":"'\
      'GMT","requestRef":"request-reference-value"},"links":[{"href":"https://'\
      'platform.mypayquicker.dev/api/v2/webhooks","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Update a [webhook subscription](page:resources/webhooks).
  def test_update_subscription
    # Parameters for the API call
    body = CreateWebhookRequest.from_hash(APIHelper.json_deserialize(
      '{"namespace":"PAYMENTQUOTES.ACCEPTED","url":"https://fawebhookreceiver.'\
      'azurewebsites.net/api/receive"}', false))

    # Perform the API call through the SDK function
    result = @controller.update_subscription(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163","created":"2020-07'\
      '-24T14:53:08Z","lastUpdated":"2022-04-13T05:53:48Z","url":"https://fawe'\
      'bhookreceiver.azurewebsites.net/api/receive","namespace":"PAYMENTQUOTES'\
      '.ACCEPTED","status":"SUBSCRIBED","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/webhooks/webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163'\
      '","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"requ'\
      'est-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [webhook subscription](page:resources/webhooks).
  def test_create_subscription
    # Parameters for the API call
    body = CreateWebhookRequest.from_hash(APIHelper.json_deserialize(
      '{"namespace":"PAYMENTQUOTES.ACCEPTED","url":"https://fawebhookreceiver.'\
      'azurewebsites.net/api/receive"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_subscription(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163","created":"2020-07'\
      '-24T14:53:08Z","lastUpdated":"2022-04-13T05:53:48Z","url":"https://fawe'\
      'bhookreceiver.azurewebsites.net/api/receive","namespace":"PAYMENTQUOTES'\
      '.ACCEPTED","status":"SUBSCRIBED","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/webhooks/webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163'\
      '","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"requ'\
      'est-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [webhook subscription](page:resources/webhooks).
  def test_create_subscription1
    # Parameters for the API call
    body = CreateWebhookRequest.from_hash(APIHelper.json_deserialize(
      '{"namespace":"PAYMENTQUOTES.ACCEPTED","url":"https://fawebhookreceiver.'\
      'azurewebsites.net/api/receive"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_subscription(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163","created":"2020-07'\
      '-24T14:53:08Z","lastUpdated":"2022-04-13T05:53:48Z","url":"https://fawe'\
      'bhookreceiver.azurewebsites.net/api/receive","namespace":"PAYMENTQUOTES'\
      '.ACCEPTED","status":"SUBSCRIBED","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/webhooks/webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163'\
      '","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"requ'\
      'est-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [webhook subscription](page:resources/webhooks) using the webhook token.
  #
  def test_retrieve_subscription
    # Parameters for the API call
    webhook_token = 'webh-2dd54a53-3814-4ce1-862f-dc06b09ead4a'

    # Perform the API call through the SDK function
    result = @controller.retrieve_subscription(webhook_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163","created":"2020-07'\
      '-24T14:53:08Z","lastUpdated":"2022-04-13T05:53:48Z","url":"https://fawe'\
      'bhookreceiver.azurewebsites.net/api/receive","namespace":"PAYMENTQUOTES'\
      '.ACCEPTED","status":"SUBSCRIBED","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/webhooks/webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163'\
      '","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"requ'\
      'est-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Delete a [webhook subscription](page:resources/webhooks).
  #
  def test_delete_subscription
    # Parameters for the API call
    webhook_token = 'webh-2dd54a53-3814-4ce1-862f-dc06b09ead4a'

    # Perform the API call through the SDK function
    result = @controller.delete_subscription(webhook_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163","created":"2020-07'\
      '-24T14:53:08Z","lastUpdated":"2022-04-13T05:53:48Z","url":"https://fawe'\
      'bhookreceiver.azurewebsites.net/api/receive","namespace":"PAYMENTQUOTES'\
      '.ACCEPTED","status":"SUBSCRIBED","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/webhooks/webh-c33c81ab-9fd7-4835-8cf9-1b23473e1163'\
      '","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"requ'\
      'est-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end