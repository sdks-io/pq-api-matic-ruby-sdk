# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class InvitationsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.invitations
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [invitations](page:resources/invitations) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_invitations
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_invitations(page, page_size, filter: filter,
                                          sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Create a [invitation](page:resources/invitations) quote.
  #
  def test_create_invitation
    # Parameters for the API call
    body = CreateInvitation.from_hash(APIHelper.json_deserialize(
      '{"amount":1500,"currency":"USD","sourceToken":"acct-3908ab5a-6ce1-474d-'\
      '8b80-a63a7b147860","destinationToken":"dest-ae92315b-6190-4e56-bdf5-c01'\
      '89ac420a1","note":"Payment 1 Note","memo":"Payment 1 Memo","purpose":"I'\
      'NCOME","clientPaymentId":"929fcf00-5a4f-4613-bd78-ed8dc33797b9","autoAc'\
      'ceptQuote":false,"notBefore":"2022-04-26T15:16:18Z","notAfter":"2022-04'\
      '-26T15:19:20Z"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_invitation(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Create a [invitation](page:resources/invitations) quote.
  #
  def test_create_invitation1
    # Parameters for the API call
    body = CreateInvitation.from_hash(APIHelper.json_deserialize(
      '{"amount":1500,"currency":"USD","sourceToken":"acct-3908ab5a-6ce1-474d-'\
      '8b80-a63a7b147860","destinationToken":"dest-ae92315b-6190-4e56-bdf5-c01'\
      '89ac420a1","note":"Payment 1 Note","memo":"Payment 1 Memo","purpose":"I'\
      'NCOME","clientPaymentId":"929fcf00-5a4f-4613-bd78-ed8dc33797b9","autoAc'\
      'ceptQuote":false,"notBefore":"2022-04-26T15:16:18Z","notAfter":"2022-04'\
      '-26T15:19:20Z"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_invitation(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Retrieve a single [invitation](page:resources/invitations).
  #
  def test_retrieve_invitation
    # Parameters for the API call
    invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'
    filter = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_invitation(invitation_token, filter: filter,
                                             language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Accept an open [invitation](page:resources/invitations) quote.
  #
  def test_update_invitation
    # Parameters for the API call
    invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.update_invitation(invitation_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Accept an open [invitation](page:resources/invitations) quote.
  #
  def test_update_invitation1
    # Parameters for the API call
    invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.update_invitation(invitation_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Cancel an open [invitation](page:resources/invitations) quote.
  #
  def test_cancel_invitation
    # Parameters for the API call
    invitation_token = 'invt-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.cancel_invitation(invitation_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end