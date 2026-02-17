# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class PaymentsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.payments
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [payments](page:resources/payments) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_payments
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_payments(page, page_size, filter: filter,
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
      '{"payload":[{"token":"pmnt-9ed0cd25-aaf5-4683-9a29-b02a9dc40400","amoun'\
      't":-1500,"autoAcceptQuote":false,"clientPaymentId":"3cdb0e3f-666a-4a32-'\
      '86e3-676c8593262a","created":"2021-06-08T19:25:13Z","currency":"USD","d'\
      'estinationToken":"user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2","memo":"Pa'\
      'yment 1 Memo","note":"Payment 1 Note","purpose":"INCOME","sourceToken":'\
      '"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receip'\
      'tToken":"rcpt-c05ac500-c5b0-4870-8e66-1004eee26e4b","links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/payments/pmnt-9ed0cd25-aaf5-468'\
      '3-9a29-b02a9dc40400","params":{"rel":"self"}}]},{"token":"pmnt-5cd70578'\
      '-fabd-4bed-8e60-af69addb21a1","amount":120,"autoAcceptQuote":false,"cli'\
      'entPaymentId":"6739f368-fa91-46d3-a221-5cd0d75be85a","created":"2021-06'\
      '-08T19:26:04Z","currency":"USD","destinationToken":"user-b41dee0e-f1ca-'\
      '4e1b-9e1e-e95d13ad8fa2","memo":"Payment 1 Memo","note":"Payment 1 Note"'\
      ',"purpose":"INCOME","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b1'\
      '47860","status":"CANCELLED","links":[{"href":"https://api.sandbox.payqu'\
      'icker.io/api/v2/payments/pmnt-5cd70578-fabd-4bed-8e60-af69addb21a1","pa'\
      'rams":{"rel":"self"}}]},{"token":"pmnt-cb279676-6ecf-46e5-b5c8-96f0b6b9'\
      'ae59","amount":-50,"autoAcceptQuote":true,"clientPaymentId":"9422dab5-2'\
      'ea8-47af-8d25-a10aef6efa50","created":"2021-06-08T19:26:26Z","currency"'\
      ':"USD","destinationToken":"user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2","'\
      'memo":"Payment 1 Memo","note":"Payment 1 Note","purpose":"INCOME","sour'\
      'ceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED'\
      '","receiptToken":"rcpt-b1d53179-dd25-4f53-b9ae-d3f23832b7a8","links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/payments/pmnt-cb279676'\
      '-6ecf-46e5-b5c8-96f0b6b9ae59","params":{"rel":"self"}}]}],"meta":{"page'\
      'No":"1","pageSize":"3","pageCount":"99","recordCount":"296","timezone":'\
      '"GMT","requestRef":"request-reference-value"},"links":[{"href":"https:/'\
      '/api.sandbox.payquicker.io/api/v2/payments?page=1&pageSize=3&language=e'\
      'n-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [payment](page:resources/payments) quote.
  #
  def test_create_payment_quote
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_payment_quote(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [payment](page:resources/payments) quote.
  #
  def test_create_payment_quote1
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_payment_quote(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [payment](page:resources/payments).
  #
  def test_retrieve_payment
    # Parameters for the API call
    payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'
    filter = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_payment(payment_token, filter: filter,
                                          language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept an open [payment](page:resources/payments) quote.
  #
  def test_accept_payment_quote
    # Parameters for the API call
    payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

    # Perform the API call through the SDK function
    result = @controller.accept_payment_quote(payment_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept an open [payment](page:resources/payments) quote.
  #
  def test_accept_payment_quote1
    # Parameters for the API call
    payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

    # Perform the API call through the SDK function
    result = @controller.accept_payment_quote(payment_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Cancel an open [payment](page:resources/payments) quote.
  #
  def test_cancel_payment_quote
    # Parameters for the API call
    payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

    # Perform the API call through the SDK function
    result = @controller.cancel_payment_quote(payment_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Perform a [payment](page:resources/payments) retraction for the full payment amount.
  #
  def test_retract_payment
    # Parameters for the API call
    payment_token = 'pmnt-d3ff8a0d-aec9-49a6-a95b-6191aebeca20'

    # Perform the API call through the SDK function
    result = @controller.retract_payment(payment_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"pmnt-37be18b6-301a-4a37-8723-ddf645abcdb7","amount":-1500,"au'\
      'toAcceptQuote":false,"clientPaymentId":"de6269af-e3b0-4d4b-801d-367776b'\
      '32f63","created":"2022-04-26T15:16:18Z","currency":"USD","destinationTo'\
      'ken":"dest-2bbfc967-d12e-4647-a887-d905172fb4bc","memo":"Payment 1 Memo'\
      '","note":"Payment 1 Note","purpose":"INCOME","sourceToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","status":"ACCEPTED","receiptToken":"rcp'\
      't-30bfaaf3-69bc-4ed5-ad6a-d38705cf0281","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/payments/pmnt-37be18b6-301a-4a37-8723-ddf64'\
      '5abcdb7","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end