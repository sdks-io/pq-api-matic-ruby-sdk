# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ElectronicWalletsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.electronic_wallets
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [electronic wallets](page:resources/electronic-wallets) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_electronic_wallets
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_electronic_wallets(user_token, page, page_size,
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
      '{"payload":[{"token":"dest-969daa60-c743-4e4f-8609-559874f26d6c","type"'\
      ':"TIGO_MONEY","electronicWalletCountry":"SV","electronicWalletCurrency"'\
      ':"USD","createdOn":"2022-05-20T15:48:54Z","fields":[{"key":"ACCOUNT_NUM'\
      'BER","value":"012345678"},{"key":"GOVERNMENT_ID","value":"012345678"}],'\
      '"status":"VERIFIED","links":[{"href":"https://api.sandbox.payquicker.io'\
      '/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wall'\
      'ets/dest-969daa60-c743-4e4f-8609-559874f26d6c","params":{"rel":"self"}}'\
      ']}],"meta":{"pageNo":"1","pageSize":"5","pageCount":"1","recordCount":"'\
      '1","timezone":"GMT","requestRef":"request-reference-value"},"links":[{"'\
      'href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae92315b-619'\
      '0-4e56-bdf5-c0189ac420a1/electronic-wallets?page=1&pageSize=5&language='\
      'en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [electronic wallet](page:resources/electronic-wallets) using a user token.
  #
  def test_create_electronic_wallet
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = CreateOrUpdateElectronicWallet.from_hash(APIHelper.json_deserialize(
      '{"type":"TIGO_MONEY","electronicWalletCountry":"SV","electronicWalletCu'\
      'rrency":"USD","fields":[{"key":"ACCOUNT_NUMBER","value":"012345678"},{"'\
      'key":"GOVERNMENT_ID","value":"012345678"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_electronic_wallet(user_token, body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","type":"TIGO_MONEY'\
      '","electronicWalletCountry":"SV","electronicWalletCurrency":"USD","crea'\
      'tedOn":"2022-05-20T15:48:54Z","fields":[{"key":"ACCOUNT_NUMBER","value"'\
      ':"012345678"},{"key":"GOVERNMENT_ID","value":"012345678"}],"status":"VE'\
      'RIFIED","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-415'\
      '79f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"meta":{"t'\
      'imezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [electronic wallet](page:resources/electronic-wallets) using a user token.
  #
  def test_create_electronic_wallet1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = CreateOrUpdateElectronicWallet.from_hash(APIHelper.json_deserialize(
      '{"type":"TIGO_MONEY","electronicWalletCountry":"SV","electronicWalletCu'\
      'rrency":"USD","fields":[{"key":"ACCOUNT_NUMBER","value":"012345678"},{"'\
      'key":"GOVERNMENT_ID","value":"012345678"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_electronic_wallet(user_token, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","type":"TIGO_MONEY'\
      '","electronicWalletCountry":"SV","electronicWalletCurrency":"USD","crea'\
      'tedOn":"2022-05-20T15:48:54Z","fields":[{"key":"ACCOUNT_NUMBER","value"'\
      ':"012345678"},{"key":"GOVERNMENT_ID","value":"012345678"}],"status":"VE'\
      'RIFIED","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-415'\
      '79f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"meta":{"t'\
      'imezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve requirements for adding a [electronic wallet](page:resources/electronic-wallets) using the parameters provided.
  #
  def test_retrieve_creation_requirements
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    electronic_wallet_type = 'TIGO_MONEY'
    country = 'US'
    currency = 'USD'

    # Perform the API call through the SDK function
    result = @controller.retrieve_creation_requirements(
      user_token, electronic_wallet_type: electronic_wallet_type,
      country: country, currency: currency
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"electronicWalletType":"TIGO_MONEY","electronicWalletCount'\
      'ry":"SV","electronicWalletCurrency":"USD","requirements":[{"requirement'\
      '":"ACCOUNT_NUMBER","format":{"example":"012345678","legend":[{"key":"01'\
      '2345678","descriptions":[{"language":"en-US","translation":"Example Acc'\
      'ount Number"},{"language":"it-IT","translation":"Esempio Numero del con'\
      'to"}]}]},"description":[{"language":"en-US","translation":"Account Numb'\
      'er"},{"language":"it-IT","translation":"Numero del conto"}],"validators'\
      '":[{"validatorType":"REGEX","expression":"^[0-9]{8}$"}]},{"requirement"'\
      ':"GOVERNMENT_ID","format":{"example":"012345678","legend":[{"key":"0123'\
      '45678","descriptions":[{"language":"en-US","translation":"Example Gover'\
      'nment Id"},{"language":"it-IT","translation":"Esempio Carta d\'Identità'\
      '"}]}]},"description":[{"language":"en-US","translation":"Government Id"'\
      '},{"language":"it-IT","translation":"Carta d\'Identità"}],"validators":'\
      '[{"validatorType":"REGEX","expression":"^[0-9]{8}$"}]}],"quote":{"forma'\
      'ttedAmount":"$4.32 USD (USD, en-US), 0,00 â‚¬ EUR (EUR, fr-FR)","amount'\
      '":4.32,"currency":"USD"},"links":[{"params":{"rel":"self"},"href":"stri'\
      'ng"}]}],"links":[{"params":{"rel":"self"},"href":"string"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [electronic wallet](page:resources/electronic-wallets) using a destination token.
  #
  def test_retrieve_electronic_wallet
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_electronic_wallet(user_token,
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
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","type":"TIGO_MONEY'\
      '","electronicWalletCountry":"SV","electronicWalletCurrency":"USD","crea'\
      'tedOn":"2022-05-20T15:48:54Z","fields":[{"key":"ACCOUNT_NUMBER","value"'\
      ':"012345678"},{"key":"GOVERNMENT_ID","value":"012345678"}],"status":"VE'\
      'RIFIED","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-415'\
      '79f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"meta":{"t'\
      'imezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Update a [electronic wallet](page:resources/electronic-wallets).
  #
  def test_update_electronic_wallet
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = CreateOrUpdateElectronicWallet.from_hash(APIHelper.json_deserialize(
      '{"type":"TIGO_MONEY","electronicWalletCountry":"SV","electronicWalletCu'\
      'rrency":"USD","fields":[{"key":"ACCOUNT_NUMBER","value":"012345678"},{"'\
      'key":"GOVERNMENT_ID","value":"012345678"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.update_electronic_wallet(user_token, destination_token,
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
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","type":"TIGO_MONEY'\
      '","electronicWalletCountry":"SV","electronicWalletCurrency":"USD","crea'\
      'tedOn":"2022-05-20T15:48:54Z","fields":[{"key":"ACCOUNT_NUMBER","value"'\
      ':"012345678"},{"key":"GOVERNMENT_ID","value":"012345678"}],"status":"VE'\
      'RIFIED","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/electronic-wallets/dest-415'\
      '79f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"meta":{"t'\
      'imezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Delete a user [electronic wallet](page:resources/electronic-wallets).
  #
  def test_delete_electronic_wallet
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.delete_electronic_wallet(user_token, destination_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
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

end