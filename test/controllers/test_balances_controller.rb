# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class BalancesControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.balances
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of bank account [balances](page:resources/balances) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_account_balances
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_account_balances(account_token, page, page_size,
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
      '{"payload":[{"amount":0,"currency":"USD","formattedAmount":"$0.00 USD",'\
      '"token":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474'\
      'd-8b80-a63a7b147860/balances","params":{"rel":"self"}}]}],"meta":{"page'\
      'No":"1","pageSize":"20","pageCount":"0","recordCount":"0","timezone":"G'\
      'MT","requestRef":"request-reference-value"},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a'\
      '63a7b147860/balances?page=1&pageSize=20&language=en-US","params":{"rel"'\
      ':"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of user [balances](page:resources/balances) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_user_balances
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_user_balances(user_token, page, page_size,
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
      '{"payload":[{"amount":0,"currency":"USD","formattedAmount":"$0.00 USD",'\
      '"token":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474'\
      'd-8b80-a63a7b147860/balances","params":{"rel":"self"}}]}],"meta":{"page'\
      'No":"1","pageSize":"20","pageCount":"0","recordCount":"0","timezone":"G'\
      'MT","requestRef":"request-reference-value"},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/accounts/acct-3908ab5a-6ce1-474d-8b80-a'\
      '63a7b147860/balances?page=1&pageSize=20&language=en-US","params":{"rel"'\
      ':"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a [prepaid card](page:resources/prepaid-cards) [balances](page:resources/balances) by destination token that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_retrieve_card_balance
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_card_balance(user_token, destination_token,
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
      '{"amount":0,"currency":"USD","formattedAmount":"$0.00 USD","token":"des'\
      't-2de9ddbf-2631-4c94-a699-90917f113b24","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac4'\
      '20a1/prepaid-cards/dest-2de9ddbf-2631-4c94-a699-90917f113b24/balances",'\
      '"params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"reques'\
      't-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end