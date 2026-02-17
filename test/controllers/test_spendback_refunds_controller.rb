# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class SpendbackRefundsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.spendback_refunds
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [spendbacks](page:resources/spendbacks) refunds that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_spendback_refunds
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_spendback_refunds(spendback_token, page,
                                                page_size, filter: filter,
                                                sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Perform a [spendback](page:resources/spendbacks) refund for a partial amount.
  #
  def test_create_spendback_refund_quote
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    body = CreateSpendbackRefundQuote.from_hash(APIHelper.json_deserialize(
      '{"amount":1.13}', false))

    # Perform the API call through the SDK function
    result = @controller.create_spendback_refund_quote(spendback_token,
                                                       body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Cancel an spendback refund quote.
  #
  def test_cancel_spendback_refund_quote
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'

    # Perform the API call through the SDK function
    result = @controller.cancel_spendback_refund_quote(spendback_token,
                                                       refund_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Retrieve a single spendback refund using the rfnd token
  def test_retrieve_spendback_refund
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_spendback_refund(spendback_token,
                                                   refund_token, page,
                                                   page_size, filter: filter,
                                                   sort: sort,
                                                   language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Accept a spendback return quote.
  def test_accept_spendback_refund_quote
    # Parameters for the API call
    spendback_token = 'spnd-c39437e1-dc80-4293-8211-c14b5a32f762'
    refund_token = 'rfnd-c39437e1-dc80-4293-8211-c14b5a32f762'

    # Perform the API call through the SDK function
    result = @controller.accept_spendback_refund_quote(spendback_token,
                                                       refund_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end