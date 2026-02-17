# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class SpendbackControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.spendback
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [spendbacks](page:resources/spendbacks) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_spendbacks
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_spendbacks(page, page_size, filter: filter,
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
      '{"payload":[{"token":"spnd-c62fd949-78ef-4f32-aef7-5de8d0c6f4a7","amoun'\
      't":300,"autoAcceptQuote":false,"clientSpendbackId":"8c3b61d7-1f5a-4bb9-'\
      '8ffc-ac756c27a3e1","created":"2021-06-08T19:30:03Z","currency":"USD","d'\
      'estinationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Sp'\
      'endback 1 Memo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceTo'\
      'ken":"user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2","status":"ACCEPTED","r'\
      'eceiptToken":"rcpt-4aaa0738-24d9-40bd-a548-18932a6c7f5c","links":[{"hre'\
      'f":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-c62fd949-7'\
      '8ef-4f32-aef7-5de8d0c6f4a7","params":{"rel":"self"}}]},{"token":"spnd-9'\
      'd769a60-4d59-4905-bb46-8f6856121f2a","amount":35,"autoAcceptQuote":fals'\
      'e,"clientSpendbackId":"37ebee96-eb48-4689-8079-b650e2a4e753","created":'\
      '"2021-06-08T19:31:56Z","currency":"USD","destinationToken":"acct-3908ab'\
      '5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Memo","note":"Spend'\
      'back 1 Note","purpose":"EXPENSE","sourceToken":"user-b41dee0e-f1ca-4e1b'\
      '-9e1e-e95d13ad8fa2","status":"CANCELLED","links":[{"href":"https://api.'\
      'sandbox.payquicker.io/api/v2/spend-back/spnd-9d769a60-4d59-4905-bb46-8f'\
      '6856121f2a","params":{"rel":"self"}}]},{"token":"spnd-bc16fb78-e391-479'\
      '6-8a82-4fe7d7473c1a","amount":100,"autoAcceptQuote":true,"clientSpendba'\
      'ckId":"35bc04d0-e98f-4ca9-817b-d62c3b320d6f","created":"2021-06-08T19:3'\
      '3:18Z","currency":"USD","destinationToken":"acct-3908ab5a-6ce1-474d-8b8'\
      '0-a63a7b147860","memo":"Spendback 1 Memo","note":"Spendback 1 Note","pu'\
      'rpose":"EXPENSE","sourceToken":"user-b41dee0e-f1ca-4e1b-9e1e-e95d13ad8f'\
      'a2","status":"ACCEPTED","receiptToken":"rcpt-6dbd9a70-75c9-49b7-aff6-34'\
      '708ed491df","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/'\
      'spend-back/spnd-bc16fb78-e391-4796-8a82-4fe7d7473c1a","params":{"rel":"'\
      'self"}}]},{"token":"spnd-4d14117c-3e8b-4275-9863-f85762ac32fb","amount"'\
      ':100,"autoAcceptQuote":true,"clientSpendbackId":"SPENDBACKRETURN-79f612'\
      '6943bd451f99bb38649da1ea10","created":"2021-06-08T19:34:33Z","currency"'\
      ':"USD","destinationToken":"acct-70739320-c917-425c-a77a-d647c65fd175","'\
      'sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","status":"FAIL'\
      'ED","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-ba'\
      'ck/spnd-4d14117c-3e8b-4275-9863-f85762ac32fb","params":{"rel":"self"}}]'\
      '},{"token":"spnd-25b877b2-fb00-4c9a-a464-f91a6597e752","amount":20,"aut'\
      'oAcceptQuote":true,"clientSpendbackId":"9b97af1c-53b6-42a0-b19c-eaffdc4'\
      '8a854","created":"2021-06-08T19:35:00Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-b'\
      '41dee0e-f1ca-4e1b-9e1e-e95d13ad8fa2","status":"ACCEPTED","receiptToken"'\
      ':"rcpt-e69b9edb-23c3-4a47-900c-60b7addbbae2","links":[{"href":"https://'\
      'api.sandbox.payquicker.io/api/v2/spend-back/spnd-25b877b2-fb00-4c9a-a46'\
      '4-f91a6597e752","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageS'\
      'ize":"5","pageCount":"13","recordCount":"64","timezone":"GMT","requestR'\
      'ef":"request-reference-value"},"links":[{"href":"https://api.sandbox.pa'\
      'yquicker.io/api/v2/spend-back?page=1&pageSize=5&language=en-US","params'\
      '":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [spendback](page:resources/spendbacks) quote.
  #
  def test_create_spendback_quote
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_spendback_quote(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [spendback](page:resources/spendbacks) quote.
  #
  def test_create_spendback_quote1
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_spendback_quote(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [spendbacks](page:resources/spendbacks) quote using the spendback token.
  #
  def test_retrieve_spendback
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_spendback(spendback_token, page, page_size,
                                            filter: filter, sort: sort,
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
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept an open [spendback](page:resources/spendbacks) quote.
  #
  def test_accept_spendback_quote
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

    # Perform the API call through the SDK function
    result = @controller.accept_spendback_quote(spendback_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept an open [spendback](page:resources/spendbacks) quote.
  #
  def test_accept_spendback_quote1
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

    # Perform the API call through the SDK function
    result = @controller.accept_spendback_quote(spendback_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Cancel an open [spendback](page:resources/spendbacks) quote.
  #
  def test_cancel_spendback_quote
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'

    # Perform the API call through the SDK function
    result = @controller.cancel_spendback_quote(spendback_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"spnd-4c414196-d3dd-4233-a729-6fc2da0810eb","amount":300,"auto'\
      'AcceptQuote":false,"clientSpendbackId":"08c6d59d-a04d-4603-8104-10c9d4c'\
      '61f0d","created":"2022-05-02T16:45:09Z","currency":"USD","destinationTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","memo":"Spendback 1 Me'\
      'mo","note":"Spendback 1 Note","purpose":"EXPENSE","sourceToken":"user-2'\
      'bbfc967-d12e-4647-a887-d905172fb4bc","status":"PENDING_ACCEPTANCE","lin'\
      'ks":[{"href":"https://api.sandbox.payquicker.io/api/v2/spend-back/spnd-'\
      '4c414196-d3dd-4233-a729-6fc2da0810eb","params":{"rel":"self"}}],"meta":'\
      '{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end