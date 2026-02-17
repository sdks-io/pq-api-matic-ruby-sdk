# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class EventsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.events
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [user events](page:resources/user#list-user-events) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_events
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.list_events(user_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"token":"evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","canBe'\
      'Cancelled":false,"eventRequirementCategoryType":"CATEGORY_UNDEFINED","e'\
      'ventRequirementType":"TYPE_UNDEFINED","eventStatus":"UNDEFINED","eventT'\
      'ype":"REQUIRED","isComplete":false,"userAction":"NO_ACTION","userImpact'\
      '":"NO_IMPACT","event":"WALLET_REGISTRATION","links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c018'\
      '9ac420a1/events/evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","params":{"r'\
      'el":"self"}}]},{"token":"evnt-fe7c9063-0c86-400e-89e3-068c2f7e4f65","ca'\
      'nBeCancelled":false,"eventRequirementCategoryType":"CATEGORY_UNDEFINED"'\
      ',"eventRequirementType":"TYPE_UNDEFINED","eventStatus":"UNDEFINED","eve'\
      'ntType":"REQUIRED","isComplete":false,"userAction":"NO_ACTION","userImp'\
      'act":"NO_IMPACT","event":"WALLET_REGISTRATION","links":[{"href":"https:'\
      '//api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c'\
      '0189ac420a1/events/evnt-fe7c9063-0c86-400e-89e3-068c2f7e4f65","params":'\
      '{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"100","pageCount":"0'\
      '","recordCount":"0","timezone":"GMT","requestRef":"request-reference-va'\
      'lue"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/'\
      'user-ae92315b-6190-4e56-bdf5-c0189ac420a1/events","params":{"rel":"self'\
      '"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of [user events](page:resources/user#list-user-events) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_events1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.list_events(user_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"token":"evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","canBe'\
      'Cancelled":false,"eventRequirementCategoryType":"CATEGORY_UNDEFINED","e'\
      'ventRequirementType":"TYPE_UNDEFINED","eventStatus":"UNDEFINED","eventT'\
      'ype":"REQUIRED","isComplete":false,"userAction":"NO_ACTION","userImpact'\
      '":"NO_IMPACT","event":"WALLET_REGISTRATION","links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c018'\
      '9ac420a1/events/evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","params":{"r'\
      'el":"self"}}]},{"token":"evnt-fe7c9063-0c86-400e-89e3-068c2f7e4f65","ca'\
      'nBeCancelled":false,"eventRequirementCategoryType":"CATEGORY_UNDEFINED"'\
      ',"eventRequirementType":"TYPE_UNDEFINED","eventStatus":"UNDEFINED","eve'\
      'ntType":"REQUIRED","isComplete":false,"userAction":"NO_ACTION","userImp'\
      'act":"NO_IMPACT","event":"WALLET_REGISTRATION","links":[{"href":"https:'\
      '//api.sandbox.payquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c'\
      '0189ac420a1/events/evnt-fe7c9063-0c86-400e-89e3-068c2f7e4f65","params":'\
      '{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"100","pageCount":"0'\
      '","recordCount":"0","timezone":"GMT","requestRef":"request-reference-va'\
      'lue"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/'\
      'user-ae92315b-6190-4e56-bdf5-c0189ac420a1/events","params":{"rel":"self'\
      '"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [user event](page:resources/user#get-user-event).
  #
  def test_retrieve_event
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    event_token = 'evnt-28491de2-5b22-4e30-028a-45901a10baa9'

    # Perform the API call through the SDK function
    result = @controller.retrieve_event(user_token, event_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","canBeCancelled":f'\
      'alse,"eventRequirementCategoryType":"CATEGORY_UNDEFINED","eventRequirem'\
      'entType":"TYPE_UNDEFINED","eventStatus":"UNDEFINED","eventType":"REQUIR'\
      'ED","isComplete":false,"userAction":"NO_ACTION","userImpact":"NO_IMPACT'\
      '","event":"WALLET_REGISTRATION","links":[{"href":"https://api.sandbox.p'\
      'ayquicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/eve'\
      'nts/evnt-4e2f6663-3e37-4bb8-b8f8-4ab1b02bd292","params":{"rel":"self"}}'\
      '],"meta":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end