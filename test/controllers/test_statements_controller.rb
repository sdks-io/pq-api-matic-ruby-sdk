# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class StatementsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.statements
    @response_catcher = @controller.http_call_back
  end

  # List Prepaid Card Statements for specific user
  def test_list_prepaid_card_statements
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_prepaid_card_statements(user_token,
                                                      destination_token, page,
                                                      page_size, filter: filter,
                                                      sort: sort,
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
      '{"payload":[{"token":"docu-17a0da7e-dd4a-44ab-9bc5-73554d9c4b48","userT'\
      'oken":"user-02e4d25a-af16-4e74-8b8d-6fa45b78af72","prepaidCardToken":"d'\
      'est-0aeed588-494c-444a-8c76-d5df54bdc435","from":"2021-10-18T00:00:00Z"'\
      ',"to":"2021-11-17T00:00:00Z","links":[{"href":"https://api.sandbox.payq'\
      'uicker.io/api/v2/users/user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepai'\
      'd-cards/dest-0aeed588-494c-444a-8c76-d5df54bdc435/statements/docu-17a0d'\
      'a7e-dd4a-44ab-9bc5-73554d9c4b48","params":{"rel":"self"}}]},{"token":"d'\
      'ocu-b4879d40-372f-4dc5-ac85-c83b662a240e","userToken":"user-02e4d25a-af'\
      '16-4e74-8b8d-6fa45b78af72","prepaidCardToken":"dest-0aeed588-494c-444a-'\
      '8c76-d5df54bdc435","from":"2021-11-18T00:00:00Z","to":"2021-12-17T00:00'\
      ':00Z","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/'\
      'user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepaid-cards/dest-0aeed588-4'\
      '94c-444a-8c76-d5df54bdc435/statements/docu-b4879d40-372f-4dc5-ac85-c83b'\
      '662a240e","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"'\
      '100","pageCount":"0","recordCount":"0","timezone":"GMT","requestRef":"r'\
      'equest-reference-value"},"links":[{"href":"https://api.sandbox.payquick'\
      'er.io/api/v2/users/user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepaid-ca'\
      'rds/dest-0aeed588-494c-444a-8c76-d5df54bdc435/statements","params":{"re'\
      'l":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single prepaid card agreement.
  def test_retrieve_prepaid_card_statement
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'

    # Perform the API call through the SDK function
    result = @controller.retrieve_prepaid_card_statement(user_token,
                                                         destination_token,
                                                         document_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"fileContents":"JVBERi0xLj........QKg2MjcKJSVFT0YK","filename":"Statem'\
      'ent-9506c668-11-17-2021.pdf","mimeType":"application/pdf","token":"docu'\
      '-17a0da7e-dd4a-44ab-9bc5-73554d9c4b48","userToken":"user-02e4d25a-af16-'\
      '4e74-8b8d-6fa45b78af72","prepaidCardToken":"dest-0aeed588-494c-444a-8c7'\
      '6-d5df54bdc435","from":"2021-10-18T00:00:00Z","to":"2021-11-17T00:00:00'\
      'Z","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/use'\
      'r-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-0aeed588-494c'\
      '-444a-8c76-d5df54bdc435/statements/docu-17a0da7e-dd4a-44ab-9bc5-73554d9'\
      'c4b48","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":'\
      '"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Returns all statements for the specified user
  def test_list_statements
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_statements(user_token, page, page_size,
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
      '{"payload":[{"token":"docu-17a0da7e-dd4a-44ab-9bc5-73554d9c4b48","userT'\
      'oken":"user-02e4d25a-af16-4e74-8b8d-6fa45b78af72","prepaidCardToken":"d'\
      'est-0aeed588-494c-444a-8c76-d5df54bdc435","from":"2021-10-18T00:00:00Z"'\
      ',"to":"2021-11-17T00:00:00Z","links":[{"href":"https://api.sandbox.payq'\
      'uicker.io/api/v2/users/user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepai'\
      'd-cards/dest-0aeed588-494c-444a-8c76-d5df54bdc435/statements/docu-17a0d'\
      'a7e-dd4a-44ab-9bc5-73554d9c4b48","params":{"rel":"self"}}]},{"token":"d'\
      'ocu-b4879d40-372f-4dc5-ac85-c83b662a240e","userToken":"user-02e4d25a-af'\
      '16-4e74-8b8d-6fa45b78af72","prepaidCardToken":"dest-0aeed588-494c-444a-'\
      '8c76-d5df54bdc435","from":"2021-11-18T00:00:00Z","to":"2021-12-17T00:00'\
      ':00Z","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/'\
      'user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepaid-cards/dest-0aeed588-4'\
      '94c-444a-8c76-d5df54bdc435/statements/docu-b4879d40-372f-4dc5-ac85-c83b'\
      '662a240e","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"'\
      '100","pageCount":"0","recordCount":"0","timezone":"GMT","requestRef":"r'\
      'equest-reference-value"},"links":[{"href":"https://api.sandbox.payquick'\
      'er.io/api/v2/users/user-631b200f-665d-4dbe-bd01-3063c9dec97d/prepaid-ca'\
      'rds/dest-0aeed588-494c-444a-8c76-d5df54bdc435/statements","params":{"re'\
      'l":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Return a specific statement
  def test_retrieve_statement
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'

    # Perform the API call through the SDK function
    result = @controller.retrieve_statement(user_token, document_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"fileContents":"JVBERi0xLj........QKg2MjcKJSVFT0YK","filename":"Statem'\
      'ent-9506c668-11-17-2021.pdf","mimeType":"application/pdf","token":"docu'\
      '-17a0da7e-dd4a-44ab-9bc5-73554d9c4b48","userToken":"user-02e4d25a-af16-'\
      '4e74-8b8d-6fa45b78af72","prepaidCardToken":"dest-0aeed588-494c-444a-8c7'\
      '6-d5df54bdc435","from":"2021-10-18T00:00:00Z","to":"2021-11-17T00:00:00'\
      'Z","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/use'\
      'r-ae92315b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-0aeed588-494c'\
      '-444a-8c76-d5df54bdc435/statements/docu-17a0da7e-dd4a-44ab-9bc5-73554d9'\
      'c4b48","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":'\
      '"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end