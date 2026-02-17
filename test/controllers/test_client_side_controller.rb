# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ClientSideControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.client_side
    @response_catcher = @controller.http_call_back
  end

  # Generate a token used to reveal [prepaid card](page:resources/prepaid-cards) information in the form of image data (base64) or JSON.
  #
  def test_create_card_data_token
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    format = 'TEXT'
    side = 'FRONT'

    # Perform the API call through the SDK function
    result = @controller.create_card_data_token(user_token, destination_token,
                                                format, side: side)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardProcessorType":"QOLO","resourceValue":"b61bc8708ab84870a2096398b6'\
      '0269d5","token":"iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmb'\
      'y+dxfeP7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9'\
      'gPa2HRIKK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3w'\
      'O14jwR4BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS","tokenPur'\
      'poseType":"CARD_OPERATION","url":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-'\
      'b61bc870-8ab8-4870-a209-6398b60269d5/pci?token=iEureKuLW1gZQ7d3%2f2ijX4'\
      '%2b6bDZuUwpp2QmhPfedarncS2Cde1Ebmby%2bdxfeP7%2bIaty9YYCLFwY42HHOm03dliH'\
      '7Jp0Yo%2fsjOb%2fFmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRIKK8%2bNcPVjjb%2b0gfqFA'\
      'I52Emk0P%2bVPaBZ2NgsENV%2fI4MuIkWsUXha3QZh49a0EK3wO14jwR4BosY%2frk0%2f9'\
      'F5uJEWUjv8gvPej%2bdCFyMnybjj6jPK9f%2fgFlPUYVHuS&format=TEXT","links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-63'\
      '98b60269d5/pci/iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+'\
      'dxfeP7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gP'\
      'a2HRIKK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO1'\
      '4jwR4BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS","params":{"'\
      'rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"request-reference'\
      '-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Return [prepaid card](page:resources/prepaid-cards) data in the form of image data, text, or both.
  #
  def test_retrieve_card_data
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    format = 'TEXT'
    side = 'FRONT'
    body = RetrieveCardData.from_hash(APIHelper.json_deserialize(
      '{"Token":"iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+dxfeP'\
      '7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRI'\
      'KK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO14jwR4'\
      'BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS"}', false))

    # Perform the API call through the SDK function
    result = @controller.retrieve_card_data(user_token, destination_token,
                                            format, side: side, body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardNumber":4833180000103940,"cvvNumber":"709","expiration":"04/25","'\
      'nameOnCard":"SIDNEY MAYER","token":"dest-b61bc870-8ab8-4870-a209-6398b6'\
      '0269d5","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870'\
      '-8ab8-4870-a209-6398b60269d5/pci","params":{"rel":"self"}}],"meta":{"ti'\
      'mezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Return [prepaid card](page:resources/prepaid-cards) data in the form of image data, text, or both.
  #
  def test_retrieve_card_data1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    format = 'TEXT'
    side = 'FRONT'
    body = RetrieveCardData.from_hash(APIHelper.json_deserialize(
      '{"Token":"iEureKuLW1gZQ7d3/2ijX4+6bDZuUwpp2QmhPfedarncS2Cde1Ebmby+dxfeP'\
      '7+Iaty9YYCLFwY42HHOm03dliH7Jp0Yo/sjOb/FmSQ3IOVYpNSYBcZYGmgpyBEG9gPa2HRI'\
      'KK8+NcPVjjb+0gfqFAI52Emk0P+VPaBZ2NgsENV/I4MuIkWsUXha3QZh49a0EK3wO14jwR4'\
      'BosY/rk0/9F5uJEWUjv8gvPej+dCFyMnybjj6jPK9f/gFlPUYVHuS"}', false))

    # Perform the API call through the SDK function
    result = @controller.retrieve_card_data(user_token, destination_token,
                                            format, side: side, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardNumber":4833180000103940,"cvvNumber":"709","expiration":"04/25","'\
      'nameOnCard":"SIDNEY MAYER","token":"dest-b61bc870-8ab8-4870-a209-6398b6'\
      '0269d5","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870'\
      '-8ab8-4870-a209-6398b60269d5/pci","params":{"rel":"self"}}],"meta":{"ti'\
      'mezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve one part of a two-part token required to reveal or set a client side [prepaid card](page:resources/prepaid-cards) PIN.
  #
  def test_create_card_pin_token
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.create_card_pin_token(user_token, destination_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardProcessorType":"QOLO","cardPinToken":"/YnZvwn9Q5TczQhubfjB8Sq1inI'\
      'VtMGnKT9ywAcan60uavrMNeMAR1RGyuWj7N8XOiy7W2QrEXGzM/668UIJMzTFOlVqSrkQSn'\
      '22ErWCb5BQTYXl04sF1nW73u8aykRHi1c4lGhu3kSrTKxqqN/GtEJTcDV+SfBj/huWQZrdW'\
      'TxdbnN2XX5jqNkGUHbfkFU0s9oxxwX6cYYreBbtmo0WFSLS0o2RT+LGAtiEqgPvT5T6NlZl'\
      'Na+TF17gbgxHi0sG","token":"dest-b61bc870-8ab8-4870-a209-6398b60269d5","'\
      'url":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e'\
      '-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-4870-a209-6398'\
      'b60269d5/pin?token=%2fYnZvwn9Q5TczQhubfjB8Sq1inIVtMGnKT9ywAcan60uavrMNe'\
      'MAR1RGyuWj7N8XOiy7W2QrEXGzM%2f668UIJMzTFOlVqSrkQSn22ErWCb5BQTYXl04sF1nW'\
      '73u8aykRHi1c4lGhu3kSrTKxqqN%2fGtEJTcDV%2bSfBj%2fhuWQZrdWTxdbnN2XX5jqNkG'\
      'UHbfkFU0s9oxxwX6cYYreBbtmo0WFSLS0o2RT%2bLGAtiEqgPvT5T6NlZlNa%2bTF17gbgx'\
      'Hi0sG","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users'\
      '/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-'\
      '8ab8-4870-a209-6398b60269d5/pin","params":{"rel":"self"}}],"meta":{"tim'\
      'ezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Set a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid card](page:resources/prepaid-cards), if supported by program.
  #
  def test_update_card_pin
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = UpdateCardPin.from_hash(APIHelper.json_deserialize(
      '{"cardPinToken":"05OQkdzRkzjP+qlhTrsko00cb58gGERv+g1Nd7/xK+Ol2+vJaOJnjQ'\
      'gdFA0Jqf5TFdYZrjO7dw/2l1V9k8xNGVr3MyKHrQh/CZ+HMz2gdI3VkJVj0x50PStECnN0t'\
      '1P4eXTZqmh93O24fXRyvLn8XvmfyV7nF94IEwzwVe6Xdvl6mHQyyyNwtSNKHtNGGpM88hoX'\
      '5PAvbqgYrsy5tBYi3CcN+Ld5Ia8+nFq9pDAXs6dCLsidU9XJRzLLcWWdhzxR","cardPin"'\
      ':"4444"}', false))

    # Perform the API call through the SDK function
    result = @controller.update_card_pin(user_token, destination_token,
                                         body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"result":true,"meta":{"timezone":"GMT","requestRef":"request-reference'\
      '-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Reveal a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid card](page:resources/prepaid-cards).
  #
  def test_retrieve_card_pin
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = RetrieveCardPin.from_hash(APIHelper.json_deserialize(
      '{"cardPinToken":"IzPQ55SGbTumVRn7xscpjL9zgFV29503mQ+GJuKAzCYl8DhLkJKZSB'\
      'qPLWx6rBf/ky9FRqZCptCCVmZ3ZT+sR6sVmBDT9vfK+8Bbv/6Kftz+Pu9DJOXTwd7Hcs9Pu'\
      'aU5qirAq9rp3P5pKL5Ilg+ZkU8b7TP2ZMBIchxYHZG5aJ3b96BdlMyEB4bu1UATKOjS2+vY'\
      'FLUFprtwbnwp94QuaiFALG9NMClQ3CqWJqot/Z1DSbTnPqIq+BRzA8Xdbh1j"}', false))

    # Perform the API call through the SDK function
    result = @controller.retrieve_card_pin(user_token, destination_token,
                                           body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardPin":"4444","token":"dest-b61bc870-8ab8-4870-a209-6398b60269d5","'\
      'links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2b'\
      'bfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-487'\
      '0-a209-6398b60269d5/pin","params":{"rel":"self"}}],"meta":{"timezone":"'\
      'GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Reveal a [PIN](#/rest/models/structures/prepaid-card-pin) for a [prepaid card](page:resources/prepaid-cards).
  #
  def test_retrieve_card_pin1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = RetrieveCardPin.from_hash(APIHelper.json_deserialize(
      '{"cardPinToken":"IzPQ55SGbTumVRn7xscpjL9zgFV29503mQ+GJuKAzCYl8DhLkJKZSB'\
      'qPLWx6rBf/ky9FRqZCptCCVmZ3ZT+sR6sVmBDT9vfK+8Bbv/6Kftz+Pu9DJOXTwd7Hcs9Pu'\
      'aU5qirAq9rp3P5pKL5Ilg+ZkU8b7TP2ZMBIchxYHZG5aJ3b96BdlMyEB4bu1UATKOjS2+vY'\
      'FLUFprtwbnwp94QuaiFALG9NMClQ3CqWJqot/Z1DSbTnPqIq+BRzA8Xdbh1j"}', false))

    # Perform the API call through the SDK function
    result = @controller.retrieve_card_pin(user_token, destination_token,
                                           body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"cardPin":"4444","token":"dest-b61bc870-8ab8-4870-a209-6398b60269d5","'\
      'links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2b'\
      'bfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-8ab8-487'\
      '0-a209-6398b60269d5/pin","params":{"rel":"self"}}],"meta":{"timezone":"'\
      'GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end