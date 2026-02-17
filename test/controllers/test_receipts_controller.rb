# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ReceiptsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.receipts
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of all account(s) [receipts](page:resources/receipts) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_account_receipts
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_account_receipts(account_token, page, page_size,
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
      '{"payload":[{"token":"rcpt-86674764-9b7a-4b31-adce-bd3299172f1f","type"'\
      ':"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-04T18:50:36Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-9'\
      '6.82,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"'\
      'en-US","translation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"deta'\
      'ils":{"memo":"User To User - memo","note":"User To User - note","correl'\
      'ationToken":"xfer-25c89128-733a-49c2-ac47-31fdfb7e2629"},"links":[{"hre'\
      'f":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc/receipts/rcpt-86674764-9b7a-4b31-adce-bd3299172f1'\
      'f","params":{"rel":"self"}}]},{"token":"rcpt-09b52cad-9e83-46d9-b36f-5d'\
      '59e560de3a","type":"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-0'\
      '4T06:48:44Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","destinationToken":"user-631b200f-665d-4dbe-bd01-3063c9d'\
      'ec97d","amount":-96.82,"currency":"USD","status":"COMPLETE","descriptio'\
      'ns":[{"language":"en-US","translation":"Transfer to Brannon Mertz (Cruz'\
      '.Hilpert)"}],"details":{"memo":"User To User - memo","note":"User To Us'\
      'er - note","correlationToken":"xfer-bc1571c2-f748-4478-9748-56018209c2a'\
      '9"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-09b52cad-9e83-46d'\
      '9-b36f-5d59e560de3a","params":{"rel":"self"}}]},{"token":"rcpt-5a7542e4'\
      '-1bfe-4112-bbe6-8b8db53ffe1e","type":"SPENDBACK_RETURN","createdOn":"20'\
      '22-05-04T06:04:43Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-4'\
      '74d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","amount":78.98,"currency":"USD","status":"COMPLETE","des'\
      'criptions":[{"language":"en-US","translation":"Refund for purchase ARIS'\
      '07D7VANJRJN2C from "}],"details":{"correlationToken":"spnd-42a5c7e9-63b'\
      'e-4686-988f-e184fce663cd"},"links":[{"href":"https://api.sandbox.payqui'\
      'cker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts'\
      '/rcpt-5a7542e4-1bfe-4112-bbe6-8b8db53ffe1e","params":{"rel":"self"}}]},'\
      '{"token":"rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","type":"SPENDBACK"'\
      ',"createdOn":"2022-05-04T06:04:14Z","sign":"DEBIT","sourceToken":"user-'\
      '2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-3908ab5a'\
      '-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","status"'\
      ':"COMPLETE","descriptions":[{"language":"en-US","translation":"Purchase'\
      ' from Arco MCB Gateway"}],"details":{"correlationToken":"spnd-7daae4c3-'\
      '3766-4beb-9b26-c2b3d4dadf27"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","type":"SPENDBA'\
      'CK_RETURN","createdOn":"2022-05-03T18:57:33Z","sign":"CREDIT","sourceTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":300,"currency":"USD",'\
      '"status":"COMPLETE","descriptions":[{"language":"en-US","translation":"'\
      'Refund for purchase ARIS07D7VANJRJN07 from "}],"details":{"correlationT'\
      'oken":"spnd-28b73a28-8b9b-4a75-98ca-b9492d777695"},"links":[{"href":"ht'\
      'tps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc/receipts/rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","pa'\
      'rams":{"rel":"self"}}]},{"token":"rcpt-ad5e8d05-be48-492d-8368-aa0122e8'\
      '05de","type":"SPENDBACK","createdOn":"2022-05-03T18:57:25Z","sign":"DEB'\
      'IT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinat'\
      'ionToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-300,"cu'\
      'rrency":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","'\
      'translation":"Purchase from Arco MCB Gateway"}],"details":{"correlation'\
      'Token":"spnd-ac4ad980-2b72-415e-80ef-890ba4bc107e"},"links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a'\
      '887-d905172fb4bc/receipts/rcpt-ad5e8d05-be48-492d-8368-aa0122e805de","p'\
      'arams":{"rel":"self"}}]},{"token":"rcpt-2de81d8a-573b-46a1-ab4b-ec691a1'\
      '00f2e","type":"SPENDBACK_RETURN","createdOn":"2022-05-03T16:53:21Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':15,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Partial refund for purchase ARIS07D7UN68D27PP from'\
      ' "}],"details":{"correlationToken":"spnd-16e75c71-dc71-4c49-8500-475715'\
      'c098ac"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/use'\
      'rs/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-2de81d8a-573'\
      'b-46a1-ab4b-ec691a100f2e","params":{"rel":"self"}}]},{"token":"rcpt-c5a'\
      '43c8c-be7a-4297-a348-6010d4342935","type":"SPENDBACK","createdOn":"2022'\
      '-05-03T16:53:00Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647'\
      '-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a6'\
      '3a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descrip'\
      'tions":[{"language":"en-US","translation":"Purchase from Arco MCB Gatew'\
      'ay"}],"details":{"correlationToken":"spnd-59c3529d-18c2-460e-b422-ad548'\
      'fab256c"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/us'\
      'ers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-c5a43c8c-be'\
      '7a-4297-a348-6010d4342935","params":{"rel":"self"}}]},{"token":"rcpt-22'\
      '0101e5-b2b6-429f-bd76-0a790b70b42d","type":"SPENDBACK","createdOn":"202'\
      '2-05-02T20:40:39Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-464'\
      '7-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a'\
      '63a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descri'\
      'ptions":[{"language":"en-US","translation":"Purchase from Arco MCB Gate'\
      'way"}],"details":{"correlationToken":"spnd-4c414196-d3dd-4233-a729-6fc2'\
      'da0810eb"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/u'\
      'sers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-220101e5-b'\
      '2b6-429f-bd76-0a790b70b42d","params":{"rel":"self"}}]},{"token":"rcpt-b'\
      'f34989d-0b13-47ee-bd51-b96b0ecbe866","type":"PREPAID_CARD_LOAD","create'\
      'dOn":"2022-04-29T19:27:08Z","sign":"DEBIT","sourceToken":"user-2bbfc967'\
      '-d12e-4647-a887-d905172fb4bc","destinationToken":"dest-b61bc870-8ab8-48'\
      '70-a209-6398b60269d5","amount":-25,"currency":"USD","status":"COMPLETE"'\
      ',"descriptions":[{"language":"en-US","translation":"Transfer to Arco MC'\
      'B Gateway Commission Account (USD) - $25.00 USD (Conversion rate: 1)"}]'\
      ',"details":{"cardExpiryDate":"04/2025","cardHolderName":"Timothy Muelle'\
      'r","cardNumber":"************3940","memo":"Memo - Card Transfer 1","not'\
      'e":"Note - Card Transfer 1","correlationToken":"xfer-bf34989d-0b13-47ee'\
      '-bd51-b96b0ecbe866"},"links":[{"href":"https://api.sandbox.payquicker.i'\
      'o/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-'\
      'bf34989d-0b13-47ee-bd51-b96b0ecbe866","params":{"rel":"self"}}]},{"toke'\
      'n":"rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","type":"PAYMENT","create'\
      'dOn":"2022-04-29T19:20:22Z","sign":"CREDIT","sourceToken":"acct-3908ab5'\
      'a-6ce1-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLET'\
      'E","descriptions":[{"language":"en-US","translation":"Payment received '\
      'from  Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-87c94572-'\
      '8241-4c46-976e-0f0dfe3211a6"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","type":"ACCOUNT'\
      '_TO_ACCOUNT_TRANSFER","createdOn":"2022-04-28T22:08:43Z","sign":"DEBIT"'\
      ',"sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destination'\
      'Token":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-10,"curren'\
      'cy":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","tran'\
      'slation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"details":{"memo"'\
      ':"User To User - memo","note":"User To User - note","correlationToken":'\
      '"xfer-aa657951-d6bc-4023-a3a7-377738650b28"},"links":[{"href":"https://'\
      'api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d90'\
      '5172fb4bc/receipts/rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","params":'\
      '{"rel":"self"}}]},{"token":"rcpt-20c97ff0-b83c-403a-aad7-25a00bdd80af",'\
      '"type":"PAYMENT_RETRACTION","createdOn":"2022-04-27T22:23:57Z","sign":"'\
      'DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","desti'\
      'nationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1000'\
      '.22,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07D0RVW6VKY02"}],"details":{"co'\
      'rrelationToken":"pmnt-4c19e750-c901-484c-acba-12979e8c6b58"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-20c97ff0-b83c-403a-aad7-25a00bd'\
      'd80af","params":{"rel":"self"}}]},{"token":"rcpt-ddc68526-8b18-42b6-9fa'\
      'c-75a04d580d6f","type":"PAYMENT","createdOn":"2022-04-27T22:23:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1000.22,"currency":"USD","status":"COMPLETE","descriptions":[{"languag'\
      'e":"en-US","translation":"Payment received from  Arco MCB Gateway"}],"d'\
      'etails":{"correlationToken":"pmnt-51297345-c803-44ab-9e2e-70713142dd58"'\
      '},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user'\
      '-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-ddc68526-8b18-42b6-'\
      '9fac-75a04d580d6f","params":{"rel":"self"}}]},{"token":"rcpt-be174879-7'\
      '829-4275-a0e6-164a7d5b5251","type":"PAYMENT_RETRACTION","createdOn":"20'\
      '22-04-27T22:19:17Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-46'\
      '47-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-'\
      'a63a7b147860","amount":-1500,"currency":"USD","status":"COMPLETE","desc'\
      'riptions":[{"language":"en-US","translation":"Retraction for ARIS07D0RV'\
      'W6VKXZS"}],"details":{"correlationToken":"pmnt-61db2938-fa74-48e9-a3f1-'\
      'b83d21f492d8"},"links":[{"href":"https://api.sandbox.payquicker.io/api/'\
      'v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-be1748'\
      '79-7829-4275-a0e6-164a7d5b5251","params":{"rel":"self"}}]},{"token":"rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","type":"PAYMENT","createdOn":"'\
      '2022-04-27T22:18:56Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1'\
      '-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLETE","de'\
      'scriptions":[{"language":"en-US","translation":"Payment received from  '\
      'Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-c99be127-65b2-4'\
      '74b-bf3a-80f4f6133f6a"},"links":[{"href":"https://api.sandbox.payquicke'\
      'r.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","params":{"rel":"self"}}]},{"t'\
      'oken":"rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","type":"PAYMENT_RETRA'\
      'CTION","createdOn":"2022-04-26T17:45:22Z","sign":"DEBIT","sourceToken":'\
      '"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-39'\
      '08ab5a-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","s'\
      'tatus":"COMPLETE","descriptions":[{"language":"en-US","translation":"Re'\
      'traction for ARIS07CW0646GSO3H"}],"details":{"correlationToken":"pmnt-f'\
      '293a55f-fae4-45cd-b63c-3023e02ef699"},"links":[{"href":"https://api.san'\
      'dbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4'\
      'bc/receipts/rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","params":{"rel":'\
      '"self"}}]},{"token":"rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","type":'\
      '"PAYMENT","createdOn":"2022-04-26T17:11:29Z","sign":"CREDIT","sourceTok'\
      'en":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"use'\
      'r-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":78.98,"currency":"USD"'\
      ',"status":"COMPLETE","descriptions":[{"language":"en-US","translation":'\
      '"Payment received from  Arco MCB Gateway"}],"details":{"correlationToke'\
      'n":"pmnt-9d60431b-8bcd-41a7-a002-1669426dac21"},"links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-'\
      'd905172fb4bc/receipts/rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","param'\
      's":{"rel":"self"}}]},{"token":"rcpt-74abe865-7719-438d-8fa2-b27cdb03ec0'\
      '6","type":"PAYMENT_RETRACTION","createdOn":"2022-04-26T15:47:39Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1'\
      '500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07CVR5THWRZML"}],"details":{"co'\
      'rrelationToken":"pmnt-ab72dd70-37f1-4024-9b44-525ae6e634a4"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-74abe865-7719-438d-8fa2-b27cdb0'\
      '3ec06","params":{"rel":"self"}}]},{"token":"rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","type":"PAYMENT","createdOn":"2022-04-26T15:47:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":'\
      '"en-US","translation":"Payment received from  Arco MCB Gateway"}],"deta'\
      'ils":{"correlationToken":"pmnt-9aca4986-fab9-4d39-8370-a7724b71ace1"},"'\
      'links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2b'\
      'bfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageS'\
      'ize":"20","pageCount":"2","recordCount":"22","timezone":"GMT","requestR'\
      'ef":"request-reference-value"},"links":[{"href":"https://api.sandbox.pa'\
      'yquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/rece'\
      'ipts?pageSize=20&language=en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single account [receipt](page:resources/receipts)
  #
  def test_retrieve_account_receipt
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    receipt_token = 'rcpt-86674764-9b7a-4b31-adce-bd3299172f1f'

    # Perform the API call through the SDK function
    result = @controller.retrieve_account_receipt(account_token, receipt_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","type":"PAYMENT","'\
      'createdOn":"2022-05-04T13:19:38Z","sign":"DEBIT","sourceToken":"acct-44'\
      '33f040-4ad5-41e5-a6e3-c9611a7be95e","destinationToken":"user-cf6244d7-f'\
      '6b8-4625-906a-9f21fc8c774b","amount":-1500,"currency":"USD","status":"C'\
      'OMPLETE","descriptions":[{"language":"en-US","translation":"Payment sen'\
      't to Boutique Partner Cale Cruickshank (Izaiah_McCullough)"}],"details"'\
      ':{"memo":"Payment 1 Memo","note":"Payment 1 Note","correlationToken":"p'\
      'mnt-1d4ae3b0-09c9-402a-8d38-3de1bfdbd1e3"},"links":[{"href":"https://ap'\
      'i.sandbox.payquicker.io/api/v2/accounts/acct-4433f040-4ad5-41e5-a6e3-c9'\
      '611a7be95e/receipts/rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","params"'\
      ':{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"request-refere'\
      'nce-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of [prepaid card](page:resources/prepaid-cards) [receipts](page:resources/receipts) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_prepaid_card_receipts
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_prepaid_card_receipts(user_token,
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
      '{"payload":[{"token":"rcpt-86674764-9b7a-4b31-adce-bd3299172f1f","type"'\
      ':"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-04T18:50:36Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-9'\
      '6.82,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"'\
      'en-US","translation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"deta'\
      'ils":{"memo":"User To User - memo","note":"User To User - note","correl'\
      'ationToken":"xfer-25c89128-733a-49c2-ac47-31fdfb7e2629"},"links":[{"hre'\
      'f":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc/receipts/rcpt-86674764-9b7a-4b31-adce-bd3299172f1'\
      'f","params":{"rel":"self"}}]},{"token":"rcpt-09b52cad-9e83-46d9-b36f-5d'\
      '59e560de3a","type":"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-0'\
      '4T06:48:44Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","destinationToken":"user-631b200f-665d-4dbe-bd01-3063c9d'\
      'ec97d","amount":-96.82,"currency":"USD","status":"COMPLETE","descriptio'\
      'ns":[{"language":"en-US","translation":"Transfer to Brannon Mertz (Cruz'\
      '.Hilpert)"}],"details":{"memo":"User To User - memo","note":"User To Us'\
      'er - note","correlationToken":"xfer-bc1571c2-f748-4478-9748-56018209c2a'\
      '9"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-09b52cad-9e83-46d'\
      '9-b36f-5d59e560de3a","params":{"rel":"self"}}]},{"token":"rcpt-5a7542e4'\
      '-1bfe-4112-bbe6-8b8db53ffe1e","type":"SPENDBACK_RETURN","createdOn":"20'\
      '22-05-04T06:04:43Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-4'\
      '74d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","amount":78.98,"currency":"USD","status":"COMPLETE","des'\
      'criptions":[{"language":"en-US","translation":"Refund for purchase ARIS'\
      '07D7VANJRJN2C from "}],"details":{"correlationToken":"spnd-42a5c7e9-63b'\
      'e-4686-988f-e184fce663cd"},"links":[{"href":"https://api.sandbox.payqui'\
      'cker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts'\
      '/rcpt-5a7542e4-1bfe-4112-bbe6-8b8db53ffe1e","params":{"rel":"self"}}]},'\
      '{"token":"rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","type":"SPENDBACK"'\
      ',"createdOn":"2022-05-04T06:04:14Z","sign":"DEBIT","sourceToken":"user-'\
      '2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-3908ab5a'\
      '-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","status"'\
      ':"COMPLETE","descriptions":[{"language":"en-US","translation":"Purchase'\
      ' from Arco MCB Gateway"}],"details":{"correlationToken":"spnd-7daae4c3-'\
      '3766-4beb-9b26-c2b3d4dadf27"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","type":"SPENDBA'\
      'CK_RETURN","createdOn":"2022-05-03T18:57:33Z","sign":"CREDIT","sourceTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":300,"currency":"USD",'\
      '"status":"COMPLETE","descriptions":[{"language":"en-US","translation":"'\
      'Refund for purchase ARIS07D7VANJRJN07 from "}],"details":{"correlationT'\
      'oken":"spnd-28b73a28-8b9b-4a75-98ca-b9492d777695"},"links":[{"href":"ht'\
      'tps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc/receipts/rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","pa'\
      'rams":{"rel":"self"}}]},{"token":"rcpt-ad5e8d05-be48-492d-8368-aa0122e8'\
      '05de","type":"SPENDBACK","createdOn":"2022-05-03T18:57:25Z","sign":"DEB'\
      'IT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinat'\
      'ionToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-300,"cu'\
      'rrency":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","'\
      'translation":"Purchase from Arco MCB Gateway"}],"details":{"correlation'\
      'Token":"spnd-ac4ad980-2b72-415e-80ef-890ba4bc107e"},"links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a'\
      '887-d905172fb4bc/receipts/rcpt-ad5e8d05-be48-492d-8368-aa0122e805de","p'\
      'arams":{"rel":"self"}}]},{"token":"rcpt-2de81d8a-573b-46a1-ab4b-ec691a1'\
      '00f2e","type":"SPENDBACK_RETURN","createdOn":"2022-05-03T16:53:21Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':15,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Partial refund for purchase ARIS07D7UN68D27PP from'\
      ' "}],"details":{"correlationToken":"spnd-16e75c71-dc71-4c49-8500-475715'\
      'c098ac"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/use'\
      'rs/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-2de81d8a-573'\
      'b-46a1-ab4b-ec691a100f2e","params":{"rel":"self"}}]},{"token":"rcpt-c5a'\
      '43c8c-be7a-4297-a348-6010d4342935","type":"SPENDBACK","createdOn":"2022'\
      '-05-03T16:53:00Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647'\
      '-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a6'\
      '3a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descrip'\
      'tions":[{"language":"en-US","translation":"Purchase from Arco MCB Gatew'\
      'ay"}],"details":{"correlationToken":"spnd-59c3529d-18c2-460e-b422-ad548'\
      'fab256c"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/us'\
      'ers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-c5a43c8c-be'\
      '7a-4297-a348-6010d4342935","params":{"rel":"self"}}]},{"token":"rcpt-22'\
      '0101e5-b2b6-429f-bd76-0a790b70b42d","type":"SPENDBACK","createdOn":"202'\
      '2-05-02T20:40:39Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-464'\
      '7-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a'\
      '63a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descri'\
      'ptions":[{"language":"en-US","translation":"Purchase from Arco MCB Gate'\
      'way"}],"details":{"correlationToken":"spnd-4c414196-d3dd-4233-a729-6fc2'\
      'da0810eb"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/u'\
      'sers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-220101e5-b'\
      '2b6-429f-bd76-0a790b70b42d","params":{"rel":"self"}}]},{"token":"rcpt-b'\
      'f34989d-0b13-47ee-bd51-b96b0ecbe866","type":"PREPAID_CARD_LOAD","create'\
      'dOn":"2022-04-29T19:27:08Z","sign":"DEBIT","sourceToken":"user-2bbfc967'\
      '-d12e-4647-a887-d905172fb4bc","destinationToken":"dest-b61bc870-8ab8-48'\
      '70-a209-6398b60269d5","amount":-25,"currency":"USD","status":"COMPLETE"'\
      ',"descriptions":[{"language":"en-US","translation":"Transfer to Arco MC'\
      'B Gateway Commission Account (USD) - $25.00 USD (Conversion rate: 1)"}]'\
      ',"details":{"cardExpiryDate":"04/2025","cardHolderName":"Timothy Muelle'\
      'r","cardNumber":"************3940","memo":"Memo - Card Transfer 1","not'\
      'e":"Note - Card Transfer 1","correlationToken":"xfer-bf34989d-0b13-47ee'\
      '-bd51-b96b0ecbe866"},"links":[{"href":"https://api.sandbox.payquicker.i'\
      'o/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-'\
      'bf34989d-0b13-47ee-bd51-b96b0ecbe866","params":{"rel":"self"}}]},{"toke'\
      'n":"rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","type":"PAYMENT","create'\
      'dOn":"2022-04-29T19:20:22Z","sign":"CREDIT","sourceToken":"acct-3908ab5'\
      'a-6ce1-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLET'\
      'E","descriptions":[{"language":"en-US","translation":"Payment received '\
      'from  Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-87c94572-'\
      '8241-4c46-976e-0f0dfe3211a6"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","type":"ACCOUNT'\
      '_TO_ACCOUNT_TRANSFER","createdOn":"2022-04-28T22:08:43Z","sign":"DEBIT"'\
      ',"sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destination'\
      'Token":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-10,"curren'\
      'cy":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","tran'\
      'slation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"details":{"memo"'\
      ':"User To User - memo","note":"User To User - note","correlationToken":'\
      '"xfer-aa657951-d6bc-4023-a3a7-377738650b28"},"links":[{"href":"https://'\
      'api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d90'\
      '5172fb4bc/receipts/rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","params":'\
      '{"rel":"self"}}]},{"token":"rcpt-20c97ff0-b83c-403a-aad7-25a00bdd80af",'\
      '"type":"PAYMENT_RETRACTION","createdOn":"2022-04-27T22:23:57Z","sign":"'\
      'DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","desti'\
      'nationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1000'\
      '.22,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07D0RVW6VKY02"}],"details":{"co'\
      'rrelationToken":"pmnt-4c19e750-c901-484c-acba-12979e8c6b58"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-20c97ff0-b83c-403a-aad7-25a00bd'\
      'd80af","params":{"rel":"self"}}]},{"token":"rcpt-ddc68526-8b18-42b6-9fa'\
      'c-75a04d580d6f","type":"PAYMENT","createdOn":"2022-04-27T22:23:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1000.22,"currency":"USD","status":"COMPLETE","descriptions":[{"languag'\
      'e":"en-US","translation":"Payment received from  Arco MCB Gateway"}],"d'\
      'etails":{"correlationToken":"pmnt-51297345-c803-44ab-9e2e-70713142dd58"'\
      '},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user'\
      '-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-ddc68526-8b18-42b6-'\
      '9fac-75a04d580d6f","params":{"rel":"self"}}]},{"token":"rcpt-be174879-7'\
      '829-4275-a0e6-164a7d5b5251","type":"PAYMENT_RETRACTION","createdOn":"20'\
      '22-04-27T22:19:17Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-46'\
      '47-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-'\
      'a63a7b147860","amount":-1500,"currency":"USD","status":"COMPLETE","desc'\
      'riptions":[{"language":"en-US","translation":"Retraction for ARIS07D0RV'\
      'W6VKXZS"}],"details":{"correlationToken":"pmnt-61db2938-fa74-48e9-a3f1-'\
      'b83d21f492d8"},"links":[{"href":"https://api.sandbox.payquicker.io/api/'\
      'v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-be1748'\
      '79-7829-4275-a0e6-164a7d5b5251","params":{"rel":"self"}}]},{"token":"rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","type":"PAYMENT","createdOn":"'\
      '2022-04-27T22:18:56Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1'\
      '-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLETE","de'\
      'scriptions":[{"language":"en-US","translation":"Payment received from  '\
      'Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-c99be127-65b2-4'\
      '74b-bf3a-80f4f6133f6a"},"links":[{"href":"https://api.sandbox.payquicke'\
      'r.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","params":{"rel":"self"}}]},{"t'\
      'oken":"rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","type":"PAYMENT_RETRA'\
      'CTION","createdOn":"2022-04-26T17:45:22Z","sign":"DEBIT","sourceToken":'\
      '"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-39'\
      '08ab5a-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","s'\
      'tatus":"COMPLETE","descriptions":[{"language":"en-US","translation":"Re'\
      'traction for ARIS07CW0646GSO3H"}],"details":{"correlationToken":"pmnt-f'\
      '293a55f-fae4-45cd-b63c-3023e02ef699"},"links":[{"href":"https://api.san'\
      'dbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4'\
      'bc/receipts/rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","params":{"rel":'\
      '"self"}}]},{"token":"rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","type":'\
      '"PAYMENT","createdOn":"2022-04-26T17:11:29Z","sign":"CREDIT","sourceTok'\
      'en":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"use'\
      'r-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":78.98,"currency":"USD"'\
      ',"status":"COMPLETE","descriptions":[{"language":"en-US","translation":'\
      '"Payment received from  Arco MCB Gateway"}],"details":{"correlationToke'\
      'n":"pmnt-9d60431b-8bcd-41a7-a002-1669426dac21"},"links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-'\
      'd905172fb4bc/receipts/rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","param'\
      's":{"rel":"self"}}]},{"token":"rcpt-74abe865-7719-438d-8fa2-b27cdb03ec0'\
      '6","type":"PAYMENT_RETRACTION","createdOn":"2022-04-26T15:47:39Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1'\
      '500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07CVR5THWRZML"}],"details":{"co'\
      'rrelationToken":"pmnt-ab72dd70-37f1-4024-9b44-525ae6e634a4"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-74abe865-7719-438d-8fa2-b27cdb0'\
      '3ec06","params":{"rel":"self"}}]},{"token":"rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","type":"PAYMENT","createdOn":"2022-04-26T15:47:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":'\
      '"en-US","translation":"Payment received from  Arco MCB Gateway"}],"deta'\
      'ils":{"correlationToken":"pmnt-9aca4986-fab9-4d39-8370-a7724b71ace1"},"'\
      'links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2b'\
      'bfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageS'\
      'ize":"20","pageCount":"2","recordCount":"22","timezone":"GMT","requestR'\
      'ef":"request-reference-value"},"links":[{"href":"https://api.sandbox.pa'\
      'yquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/rece'\
      'ipts?pageSize=20&language=en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single user prepaid-card [receipt](page:resources/receipts)
  def test_retrieve_prepaid_card_receipt
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    receipt_token = 'rcpt-86674764-9b7a-4b31-adce-bd3299172f1f'

    # Perform the API call through the SDK function
    result = @controller.retrieve_prepaid_card_receipt(user_token,
                                                       destination_token,
                                                       receipt_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","type":"PAYMENT","'\
      'createdOn":"2022-05-04T13:19:38Z","sign":"DEBIT","sourceToken":"acct-44'\
      '33f040-4ad5-41e5-a6e3-c9611a7be95e","destinationToken":"user-cf6244d7-f'\
      '6b8-4625-906a-9f21fc8c774b","amount":-1500,"currency":"USD","status":"C'\
      'OMPLETE","descriptions":[{"language":"en-US","translation":"Payment sen'\
      't to Boutique Partner Cale Cruickshank (Izaiah_McCullough)"}],"details"'\
      ':{"memo":"Payment 1 Memo","note":"Payment 1 Note","correlationToken":"p'\
      'mnt-1d4ae3b0-09c9-402a-8d38-3de1bfdbd1e3"},"links":[{"href":"https://ap'\
      'i.sandbox.payquicker.io/api/v2/accounts/acct-4433f040-4ad5-41e5-a6e3-c9'\
      '611a7be95e/receipts/rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","params"'\
      ':{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"request-refere'\
      'nce-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of  user [receipts](page:resources/receipts) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_user_receipts
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_user_receipts(user_token, page, page_size,
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
      '{"payload":[{"token":"rcpt-86674764-9b7a-4b31-adce-bd3299172f1f","type"'\
      ':"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-04T18:50:36Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-9'\
      '6.82,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"'\
      'en-US","translation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"deta'\
      'ils":{"memo":"User To User - memo","note":"User To User - note","correl'\
      'ationToken":"xfer-25c89128-733a-49c2-ac47-31fdfb7e2629"},"links":[{"hre'\
      'f":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc/receipts/rcpt-86674764-9b7a-4b31-adce-bd3299172f1'\
      'f","params":{"rel":"self"}}]},{"token":"rcpt-09b52cad-9e83-46d9-b36f-5d'\
      '59e560de3a","type":"ACCOUNT_TO_ACCOUNT_TRANSFER","createdOn":"2022-05-0'\
      '4T06:48:44Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","destinationToken":"user-631b200f-665d-4dbe-bd01-3063c9d'\
      'ec97d","amount":-96.82,"currency":"USD","status":"COMPLETE","descriptio'\
      'ns":[{"language":"en-US","translation":"Transfer to Brannon Mertz (Cruz'\
      '.Hilpert)"}],"details":{"memo":"User To User - memo","note":"User To Us'\
      'er - note","correlationToken":"xfer-bc1571c2-f748-4478-9748-56018209c2a'\
      '9"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-09b52cad-9e83-46d'\
      '9-b36f-5d59e560de3a","params":{"rel":"self"}}]},{"token":"rcpt-5a7542e4'\
      '-1bfe-4112-bbe6-8b8db53ffe1e","type":"SPENDBACK_RETURN","createdOn":"20'\
      '22-05-04T06:04:43Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-4'\
      '74d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a887'\
      '-d905172fb4bc","amount":78.98,"currency":"USD","status":"COMPLETE","des'\
      'criptions":[{"language":"en-US","translation":"Refund for purchase ARIS'\
      '07D7VANJRJN2C from "}],"details":{"correlationToken":"spnd-42a5c7e9-63b'\
      'e-4686-988f-e184fce663cd"},"links":[{"href":"https://api.sandbox.payqui'\
      'cker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts'\
      '/rcpt-5a7542e4-1bfe-4112-bbe6-8b8db53ffe1e","params":{"rel":"self"}}]},'\
      '{"token":"rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","type":"SPENDBACK"'\
      ',"createdOn":"2022-05-04T06:04:14Z","sign":"DEBIT","sourceToken":"user-'\
      '2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-3908ab5a'\
      '-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","status"'\
      ':"COMPLETE","descriptions":[{"language":"en-US","translation":"Purchase'\
      ' from Arco MCB Gateway"}],"details":{"correlationToken":"spnd-7daae4c3-'\
      '3766-4beb-9b26-c2b3d4dadf27"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-19b7dd3b-e597-4759-b55e-608a8efbd7cc","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","type":"SPENDBA'\
      'CK_RETURN","createdOn":"2022-05-03T18:57:33Z","sign":"CREDIT","sourceTo'\
      'ken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"us'\
      'er-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":300,"currency":"USD",'\
      '"status":"COMPLETE","descriptions":[{"language":"en-US","translation":"'\
      'Refund for purchase ARIS07D7VANJRJN07 from "}],"details":{"correlationT'\
      'oken":"spnd-28b73a28-8b9b-4a75-98ca-b9492d777695"},"links":[{"href":"ht'\
      'tps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc/receipts/rcpt-1736aaff-b952-40bf-96bf-742cb12f092d","pa'\
      'rams":{"rel":"self"}}]},{"token":"rcpt-ad5e8d05-be48-492d-8368-aa0122e8'\
      '05de","type":"SPENDBACK","createdOn":"2022-05-03T18:57:25Z","sign":"DEB'\
      'IT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinat'\
      'ionToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-300,"cu'\
      'rrency":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","'\
      'translation":"Purchase from Arco MCB Gateway"}],"details":{"correlation'\
      'Token":"spnd-ac4ad980-2b72-415e-80ef-890ba4bc107e"},"links":[{"href":"h'\
      'ttps://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a'\
      '887-d905172fb4bc/receipts/rcpt-ad5e8d05-be48-492d-8368-aa0122e805de","p'\
      'arams":{"rel":"self"}}]},{"token":"rcpt-2de81d8a-573b-46a1-ab4b-ec691a1'\
      '00f2e","type":"SPENDBACK_RETURN","createdOn":"2022-05-03T16:53:21Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':15,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Partial refund for purchase ARIS07D7UN68D27PP from'\
      ' "}],"details":{"correlationToken":"spnd-16e75c71-dc71-4c49-8500-475715'\
      'c098ac"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/use'\
      'rs/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-2de81d8a-573'\
      'b-46a1-ab4b-ec691a100f2e","params":{"rel":"self"}}]},{"token":"rcpt-c5a'\
      '43c8c-be7a-4297-a348-6010d4342935","type":"SPENDBACK","createdOn":"2022'\
      '-05-03T16:53:00Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647'\
      '-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a6'\
      '3a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descrip'\
      'tions":[{"language":"en-US","translation":"Purchase from Arco MCB Gatew'\
      'ay"}],"details":{"correlationToken":"spnd-59c3529d-18c2-460e-b422-ad548'\
      'fab256c"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/us'\
      'ers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-c5a43c8c-be'\
      '7a-4297-a348-6010d4342935","params":{"rel":"self"}}]},{"token":"rcpt-22'\
      '0101e5-b2b6-429f-bd76-0a790b70b42d","type":"SPENDBACK","createdOn":"202'\
      '2-05-02T20:40:39Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-464'\
      '7-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-a'\
      '63a7b147860","amount":-300,"currency":"USD","status":"COMPLETE","descri'\
      'ptions":[{"language":"en-US","translation":"Purchase from Arco MCB Gate'\
      'way"}],"details":{"correlationToken":"spnd-4c414196-d3dd-4233-a729-6fc2'\
      'da0810eb"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/u'\
      'sers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-220101e5-b'\
      '2b6-429f-bd76-0a790b70b42d","params":{"rel":"self"}}]},{"token":"rcpt-b'\
      'f34989d-0b13-47ee-bd51-b96b0ecbe866","type":"PREPAID_CARD_LOAD","create'\
      'dOn":"2022-04-29T19:27:08Z","sign":"DEBIT","sourceToken":"user-2bbfc967'\
      '-d12e-4647-a887-d905172fb4bc","destinationToken":"dest-b61bc870-8ab8-48'\
      '70-a209-6398b60269d5","amount":-25,"currency":"USD","status":"COMPLETE"'\
      ',"descriptions":[{"language":"en-US","translation":"Transfer to Arco MC'\
      'B Gateway Commission Account (USD) - $25.00 USD (Conversion rate: 1)"}]'\
      ',"details":{"cardExpiryDate":"04/2025","cardHolderName":"Timothy Muelle'\
      'r","cardNumber":"************3940","memo":"Memo - Card Transfer 1","not'\
      'e":"Note - Card Transfer 1","correlationToken":"xfer-bf34989d-0b13-47ee'\
      '-bd51-b96b0ecbe866"},"links":[{"href":"https://api.sandbox.payquicker.i'\
      'o/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-'\
      'bf34989d-0b13-47ee-bd51-b96b0ecbe866","params":{"rel":"self"}}]},{"toke'\
      'n":"rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","type":"PAYMENT","create'\
      'dOn":"2022-04-29T19:20:22Z","sign":"CREDIT","sourceToken":"acct-3908ab5'\
      'a-6ce1-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4'\
      '647-a887-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLET'\
      'E","descriptions":[{"language":"en-US","translation":"Payment received '\
      'from  Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-87c94572-'\
      '8241-4c46-976e-0f0dfe3211a6"},"links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/recei'\
      'pts/rcpt-022b3730-e62e-4ee3-8af9-714a06dadf3c","params":{"rel":"self"}}'\
      ']},{"token":"rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","type":"ACCOUNT'\
      '_TO_ACCOUNT_TRANSFER","createdOn":"2022-04-28T22:08:43Z","sign":"DEBIT"'\
      ',"sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destination'\
      'Token":"user-631b200f-665d-4dbe-bd01-3063c9dec97d","amount":-10,"curren'\
      'cy":"USD","status":"COMPLETE","descriptions":[{"language":"en-US","tran'\
      'slation":"Transfer to Brannon Mertz (Cruz.Hilpert)"}],"details":{"memo"'\
      ':"User To User - memo","note":"User To User - note","correlationToken":'\
      '"xfer-aa657951-d6bc-4023-a3a7-377738650b28"},"links":[{"href":"https://'\
      'api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d90'\
      '5172fb4bc/receipts/rcpt-24e6c58c-5819-41fa-8dd4-15f8920a68e9","params":'\
      '{"rel":"self"}}]},{"token":"rcpt-20c97ff0-b83c-403a-aad7-25a00bdd80af",'\
      '"type":"PAYMENT_RETRACTION","createdOn":"2022-04-27T22:23:57Z","sign":"'\
      'DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","desti'\
      'nationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1000'\
      '.22,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07D0RVW6VKY02"}],"details":{"co'\
      'rrelationToken":"pmnt-4c19e750-c901-484c-acba-12979e8c6b58"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-20c97ff0-b83c-403a-aad7-25a00bd'\
      'd80af","params":{"rel":"self"}}]},{"token":"rcpt-ddc68526-8b18-42b6-9fa'\
      'c-75a04d580d6f","type":"PAYMENT","createdOn":"2022-04-27T22:23:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1000.22,"currency":"USD","status":"COMPLETE","descriptions":[{"languag'\
      'e":"en-US","translation":"Payment received from  Arco MCB Gateway"}],"d'\
      'etails":{"correlationToken":"pmnt-51297345-c803-44ab-9e2e-70713142dd58"'\
      '},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user'\
      '-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-ddc68526-8b18-42b6-'\
      '9fac-75a04d580d6f","params":{"rel":"self"}}]},{"token":"rcpt-be174879-7'\
      '829-4275-a0e6-164a7d5b5251","type":"PAYMENT_RETRACTION","createdOn":"20'\
      '22-04-27T22:19:17Z","sign":"DEBIT","sourceToken":"user-2bbfc967-d12e-46'\
      '47-a887-d905172fb4bc","destinationToken":"acct-3908ab5a-6ce1-474d-8b80-'\
      'a63a7b147860","amount":-1500,"currency":"USD","status":"COMPLETE","desc'\
      'riptions":[{"language":"en-US","translation":"Retraction for ARIS07D0RV'\
      'W6VKXZS"}],"details":{"correlationToken":"pmnt-61db2938-fa74-48e9-a3f1-'\
      'b83d21f492d8"},"links":[{"href":"https://api.sandbox.payquicker.io/api/'\
      'v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-be1748'\
      '79-7829-4275-a0e6-164a7d5b5251","params":{"rel":"self"}}]},{"token":"rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","type":"PAYMENT","createdOn":"'\
      '2022-04-27T22:18:56Z","sign":"CREDIT","sourceToken":"acct-3908ab5a-6ce1'\
      '-474d-8b80-a63a7b147860","destinationToken":"user-2bbfc967-d12e-4647-a8'\
      '87-d905172fb4bc","amount":1500,"currency":"USD","status":"COMPLETE","de'\
      'scriptions":[{"language":"en-US","translation":"Payment received from  '\
      'Arco MCB Gateway"}],"details":{"correlationToken":"pmnt-c99be127-65b2-4'\
      '74b-bf3a-80f4f6133f6a"},"links":[{"href":"https://api.sandbox.payquicke'\
      'r.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/receipts/rc'\
      'pt-3baa92d6-a443-4b45-a245-b34ad51c85f6","params":{"rel":"self"}}]},{"t'\
      'oken":"rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","type":"PAYMENT_RETRA'\
      'CTION","createdOn":"2022-04-26T17:45:22Z","sign":"DEBIT","sourceToken":'\
      '"user-2bbfc967-d12e-4647-a887-d905172fb4bc","destinationToken":"acct-39'\
      '08ab5a-6ce1-474d-8b80-a63a7b147860","amount":-78.98,"currency":"USD","s'\
      'tatus":"COMPLETE","descriptions":[{"language":"en-US","translation":"Re'\
      'traction for ARIS07CW0646GSO3H"}],"details":{"correlationToken":"pmnt-f'\
      '293a55f-fae4-45cd-b63c-3023e02ef699"},"links":[{"href":"https://api.san'\
      'dbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4'\
      'bc/receipts/rcpt-d91a1d65-adab-43b1-8f33-9f5a9fac8da7","params":{"rel":'\
      '"self"}}]},{"token":"rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","type":'\
      '"PAYMENT","createdOn":"2022-04-26T17:11:29Z","sign":"CREDIT","sourceTok'\
      'en":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","destinationToken":"use'\
      'r-2bbfc967-d12e-4647-a887-d905172fb4bc","amount":78.98,"currency":"USD"'\
      ',"status":"COMPLETE","descriptions":[{"language":"en-US","translation":'\
      '"Payment received from  Arco MCB Gateway"}],"details":{"correlationToke'\
      'n":"pmnt-9d60431b-8bcd-41a7-a002-1669426dac21"},"links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-'\
      'd905172fb4bc/receipts/rcpt-5c1ec450-09c5-4f97-828f-94f843f755f1","param'\
      's":{"rel":"self"}}]},{"token":"rcpt-74abe865-7719-438d-8fa2-b27cdb03ec0'\
      '6","type":"PAYMENT_RETRACTION","createdOn":"2022-04-26T15:47:39Z","sign'\
      '":"DEBIT","sourceToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","de'\
      'stinationToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860","amount":-1'\
      '500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":"e'\
      'n-US","translation":"Retraction for ARIS07CVR5THWRZML"}],"details":{"co'\
      'rrelationToken":"pmnt-ab72dd70-37f1-4024-9b44-525ae6e634a4"},"links":[{'\
      '"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bbfc967-d1'\
      '2e-4647-a887-d905172fb4bc/receipts/rcpt-74abe865-7719-438d-8fa2-b27cdb0'\
      '3ec06","params":{"rel":"self"}}]},{"token":"rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","type":"PAYMENT","createdOn":"2022-04-26T15:47:31Z","si'\
      'gn":"CREDIT","sourceToken":"acct-3908ab5a-6ce1-474d-8b80-a63a7b147860",'\
      '"destinationToken":"user-2bbfc967-d12e-4647-a887-d905172fb4bc","amount"'\
      ':1500,"currency":"USD","status":"COMPLETE","descriptions":[{"language":'\
      '"en-US","translation":"Payment received from  Arco MCB Gateway"}],"deta'\
      'ils":{"correlationToken":"pmnt-9aca4986-fab9-4d39-8370-a7724b71ace1"},"'\
      'links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2b'\
      'bfc967-d12e-4647-a887-d905172fb4bc/receipts/rcpt-e3abab12-bcaa-41fd-91d'\
      '3-3819f27e8eba","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageS'\
      'ize":"20","pageCount":"2","recordCount":"22","timezone":"GMT","requestR'\
      'ef":"request-reference-value"},"links":[{"href":"https://api.sandbox.pa'\
      'yquicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/rece'\
      'ipts?pageSize=20&language=en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single user [receipt](page:resources/receipts)
  #
  def test_retrieve_user_receipt
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    receipt_token = 'rcpt-86674764-9b7a-4b31-adce-bd3299172f1f'

    # Perform the API call through the SDK function
    result = @controller.retrieve_user_receipt(user_token, receipt_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","type":"PAYMENT","'\
      'createdOn":"2022-05-04T13:19:38Z","sign":"DEBIT","sourceToken":"acct-44'\
      '33f040-4ad5-41e5-a6e3-c9611a7be95e","destinationToken":"user-cf6244d7-f'\
      '6b8-4625-906a-9f21fc8c774b","amount":-1500,"currency":"USD","status":"C'\
      'OMPLETE","descriptions":[{"language":"en-US","translation":"Payment sen'\
      't to Boutique Partner Cale Cruickshank (Izaiah_McCullough)"}],"details"'\
      ':{"memo":"Payment 1 Memo","note":"Payment 1 Note","correlationToken":"p'\
      'mnt-1d4ae3b0-09c9-402a-8d38-3de1bfdbd1e3"},"links":[{"href":"https://ap'\
      'i.sandbox.payquicker.io/api/v2/accounts/acct-4433f040-4ad5-41e5-a6e3-c9'\
      '611a7be95e/receipts/rcpt-b58721a3-33e8-4a62-b51d-a997b46fbce0","params"'\
      ':{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef":"request-refere'\
      'nce-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end