# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class PrepaidCardsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.prepaid_cards
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [prepaid cards](page:resources/prepaid-cards) by user token that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_prepaid_cards
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_prepaid_cards(user_token, page, page_size,
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
      '{"payload":[{"token":"dest-b61bc870-8ab8-4870-a209-6398b60269d5","cardN'\
      'etwork":"VISA","cardNumber":"483318******3940","cardPackage":"712940","'\
      'country":"US","createdOn":"2022-04-20T18:43:15Z","currency":"USD","cvv"'\
      ':"***","expires":"04/2025","status":"PENDING_ACTIVATION","bankInDetails'\
      '":[{"key":"BANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value'\
      '":"8037390305203"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOO'\
      'GLEPAY","SAMSUNGPAY"],"userToken":"user-2bbfc967-d12e-4647-a887-d905172'\
      'fb4bc","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users'\
      '/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards/dest-b61bc870-'\
      '8ab8-4870-a209-6398b60269d5","params":{"rel":"self"}}]},{"token":"dest-'\
      '9a8f1dc9-5e59-4ce5-a919-fc586d85d6e5","cardNetwork":"VISA","cardNumber"'\
      ':"483318******4628","cardPackage":"712940","country":"US","createdOn":"'\
      '2022-04-20T18:42:47Z","currency":"USD","cvv":"***","expires":"06/2025",'\
      '"status":"CLOSED_LOST_STOLEN_DAMAGED","capabilities":["BANK_IN","SET_PI'\
      'N","APPLEPAY","GOOGLEPAY","SAMSUNGPAY"],"userToken":"user-2bbfc967-d12e'\
      '-4647-a887-d905172fb4bc","links":[{"href":"https://api.sandbox.payquick'\
      'er.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-ca'\
      'rds/dest-9a8f1dc9-5e59-4ce5-a919-fc586d85d6e5","params":{"rel":"self"}}'\
      ']},{"token":"dest-d9c6edab-ddec-4941-b980-f33cfe2f9f6b","cardNetwork":"'\
      'VISA","cardNumber":"483318******1805","cardPackage":"712940","country":'\
      '"US","createdOn":"2022-04-20T18:36:16Z","currency":"USD","cvv":"***","e'\
      'xpires":"10/2025","status":"CLOSED_LOST_STOLEN_DAMAGED","capabilities":'\
      '["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAMSUNGPAY"],"userToken":"'\
      'user-2bbfc967-d12e-4647-a887-d905172fb4bc","links":[{"href":"https://ap'\
      'i.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d9051'\
      '72fb4bc/prepaid-cards/dest-d9c6edab-ddec-4941-b980-f33cfe2f9f6b","param'\
      's":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"100","pageCount"'\
      ':"1","recordCount":"3","timezone":"GMT","requestRef":"request-reference'\
      '-value"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/use'\
      'rs/user-2bbfc967-d12e-4647-a887-d905172fb4bc/prepaid-cards","params":{"'\
      'rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Order a [prepaid card](page:resources/prepaid-cards) for the user by specifying a cardPackage.
  #
  #Assign a prepaid card to a user when a program token and card reference number are supplied.
  def test_order_prepaid_card
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = OrderPrepaidCard.from_hash(APIHelper.json_deserialize(
      '{"cardPackage":"712940","programToken":"prog-6a272eca-9487-d83a-c9e4-8d'\
      'f8c9a7f6eb"}', false))

    # Perform the API call through the SDK function
    result = @controller.order_prepaid_card(user_token, body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Order a [prepaid card](page:resources/prepaid-cards) for the user by specifying a cardPackage.
  #
  #Assign a prepaid card to a user when a program token and card reference number are supplied.
  def test_order_prepaid_card1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = OrderPrepaidCard.from_hash(APIHelper.json_deserialize(
      '{"cardPackage":"712940","programToken":"prog-6a272eca-9487-d83a-c9e4-8d'\
      'f8c9a7f6eb"}', false))

    # Perform the API call through the SDK function
    result = @controller.order_prepaid_card(user_token, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Replace a [prepaid card](page:resources/prepaid-cards) by destination token.
  #
  def test_replace_prepaid_card
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = ReplacePrepaidCard.from_hash(APIHelper.json_deserialize(
      '{"cardPackage":"23654","cardReplacementReason":"LOST"}', false))

    # Perform the API call through the SDK function
    result = @controller.replace_prepaid_card(user_token, destination_token,
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
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Replace a [prepaid card](page:resources/prepaid-cards) by destination token.
  #
  def test_replace_prepaid_card1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = ReplacePrepaidCard.from_hash(APIHelper.json_deserialize(
      '{"cardPackage":"23654","cardReplacementReason":"LOST"}', false))

    # Perform the API call through the SDK function
    result = @controller.replace_prepaid_card(user_token, destination_token,
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
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve [prepaid card](page:resources/prepaid-cards) details by destination token.
  #
  def test_retrieve_prepaid_card
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.retrieve_prepaid_card(user_token, destination_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Partial [prepaid card](page:resources/prepaid-cards) update.
  #
  def test_update_prepaid_card
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = UpdatePrepaidCard.from_hash(APIHelper.json_deserialize(
      '{"cardPackage":"","status":"QUEUED"}', false))

    # Perform the API call through the SDK function
    result = @controller.update_prepaid_card(user_token, destination_token,
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
      '{"token":"dest-fcd31b51-0968-4537-8722-f486bdd5cd74","cardNetwork":"VIS'\
      'A","cardNumber":"483318******2127","cardPackage":"712940","country":"US'\
      '","createdOn":"2022-05-06T18:14:52Z","currency":"USD","cvv":"***","expi'\
      'res":"06/2025","status":"PENDING_ACTIVATION","bankInDetails":[{"key":"B'\
      'ANK_ACH_ABA","value":"026014892"},{"key":"BANK_BBAN","value":"803739085'\
      '3101"}],"capabilities":["BANK_IN","SET_PIN","APPLEPAY","GOOGLEPAY","SAM'\
      'SUNGPAY"],"userToken":"user-ae92315b-6190-4e56-bdf5-c0189ac420a1","link'\
      's":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae9231'\
      '5b-6190-4e56-bdf5-c0189ac420a1/prepaid-cards/dest-fcd31b51-0968-4537-87'\
      '22-f486bdd5cd74","params":{"rel":"self"}}],"meta":{"timezone":"GMT","re'\
      'questRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # TODO
  def test_list_card_authorizations
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.list_card_authorizations(user_token, destination_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"type":"UNSETTLED_AUTHORIZATION","createdOn":"2022-05-04T1'\
      '3:22:53Z","sign":"DEBIT","sourceToken":"dest-8e35fc1b-82f4-4bf5-93d1-27'\
      'f71a192bc2","amount":-35,"currency":"USD","status":"UNSETTLED","descrip'\
      'tions":[{"language":"en-US","translation":"Completed Bank Transfer Requ'\
      'est"}],"authDate":"2022-05-04T13:22:53Z","reference":"CC008AB44895"}],"'\
      'meta":{"pageNo":"1","pageSize":"100","pageCount":"0","recordCount":"0",'\
      '"timezone":"GMT","requestRef":"request-reference-value"},"links":[{"hre'\
      'f":"https://api.sandbox.payquicker.io/api/v2/users/user-cf6244d7-f6b8-4'\
      '625-906a-9f21fc8c774b/prepaid-cards/dest-8e35fc1b-82f4-4bf5-93d1-27f71a'\
      '192bc2/authorizations","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end