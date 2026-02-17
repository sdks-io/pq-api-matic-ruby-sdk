# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class AgreementsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.agreements
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of program [agreements](page:resources/agreements) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_agreements
    # Parameters for the API call
    program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_agreements(program_token, page, page_size,
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
      '{"payload":[{"token":"agmt-b33d420f-6c1b-4a93-9455-d6585552b97d","conte'\
      'ntBase64":"DQogIGZvciB5b3VyIHBsYXN0aW...KPC9ib2R5Pg0KDQo8L2h0bWw+DQo=",'\
      '"url":"https://cdn.payquicker.io/content/Agreements/Cardholder/v1/Langu'\
      'ages_EN_US/CardholderAgreement-Consumer-ACH-20k-MCB-USD.pdf","type":"CA'\
      'RD_HOLDER_AGREEMENT","links":[{"href":"https://api.sandbox.payquicker.i'\
      'o/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb/agreements/'\
      'agmt-b33d420f-6c1b-4a93-9455-d6585552b97d","params":{"rel":"self"}}]}],'\
      '"meta":{"pageNo":"1","pageSize":"100","pageCount":"0","recordCount":"0"'\
      ',"timezone":"GMT","requestRef":"request-reference-value"},"links":[{"hr'\
      'ef":"https://api.sandbox.payquicker.io/api/v2/programs/prog-6a272eca-94'\
      '87-d83a-c9e4-8df8c9a7f6eb/agreements","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single program [agreement](page:resources/agreements).
  #
  def test_retrieve_program_agreement
    # Parameters for the API call
    program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'
    agreement_token = 'agmt-b33d420f-6c1b-4a93-9455-d6585552b97d'

    # Perform the API call through the SDK function
    result = @controller.retrieve_program_agreement(program_token,
                                                    agreement_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"agmt-b33d420f-6c1b-4a93-9455-d6585552b97d","contentBase64":"D'\
      'QogIGZvciB5b3VyIHBsYXN0aW...KPC9ib2R5Pg0KDQo8L2h0bWw+DQo=","url":"https'\
      '://cdn.payquicker.io/content/Agreements/Cardholder/v1/Languages_EN_US/C'\
      'ardholderAgreement-Consumer-ACH-20k-MCB-USD.pdf","type":"CARD_HOLDER_AG'\
      'REEMENT","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/pro'\
      'grams/prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb/agreements/agmt-b33d420'\
      'f-6c1b-4a93-9455-d6585552b97d","params":{"rel":"self"}}],"meta":{"timez'\
      'one":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept a single program [agreement](page:resources/agreements).
  #
  def test_accept_agreement
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    agreement_token = 'agmt-b33d420f-6c1b-4a93-9455-d6585552b97d'

    # Perform the API call through the SDK function
    @controller.accept_agreement(user_token, agreement_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

end