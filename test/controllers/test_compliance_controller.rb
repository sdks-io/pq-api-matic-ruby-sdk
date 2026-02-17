# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ComplianceControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.compliance
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [IDV checks](page:resources/user#list-user-idv-checks) by user token that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_identity_checks
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.list_identity_checks(user_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"idvProviderReference":"yPV0h4o1Yw3QzdLAvA7a","idvResult":'\
      '"PASS","idvSubResult":"HARD","idvProvider":"HOOYU","createdOn":"2020-02'\
      '-21T22:00:00Z","raw":"<RAW IDV processor output, for informational /deb'\
      'ugging purposes only>","idvCheckType":"NON_DOCUMENTARY","idvDisposition'\
      '":"FINAL","token":"idvc-7e7567e0-c2db-485d-896d-45901a10baa9","userToke'\
      'n":"user-f012bc86-4d42-415b-a8b2-be5e0b90e59a","links":[{"params":{"rel'\
      '":"self"},"href":"https://api.payquicker.io/api/v2/users/user-f012bc86-'\
      '4d42-415b-a8b2-be5e0b90e59a/idv-checks/idvc-7e7567e0-c2db-485d-896d-459'\
      '01a10baa9"}]}],"links":[{"params":{"rel":"self"},"href":"https://api.pa'\
      'yquicker.io/api/v2/users/user-f012bc86-4d42-415b-a8b2-be5e0b90e59a/idv-'\
      'checks"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of [IDV checks](page:resources/user#retrieve-user-idv-check) by IDVC token that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_retrieve_identity_check
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    idvc_token = 'idvc-7e7567e0-c2db-485d-896d-45901a10baa9'

    # Perform the API call through the SDK function
    result = @controller.retrieve_identity_check(user_token, idvc_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"createdOn":"2022-04-20T17:34:50Z","idvCheckType":"PII","idvDispostion'\
      '":"UNDEFINED","idvProvider":"FISIDOLOGY","idvResult":"PASS","idvSubResu'\
      'lt":"HARD","token":"idvc-5a04bacf-f99c-4962-8c02-d8e744c625d6","userTok'\
      'en":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-'\
      'd905172fb4bc/idv-checks/idvc-5a04bacf-f99c-4962-8c02-d8e744c625d6","par'\
      'ams":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"request-re'\
      'ference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end