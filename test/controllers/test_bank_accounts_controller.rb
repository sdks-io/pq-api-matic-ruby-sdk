# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class BankAccountsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.bank_accounts
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [bank accounts](page:resources/bank-accounts) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_bank_accounts
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_bank_accounts(user_token, page, page_size,
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
      '{"payload":[{"token":"dest-969daa60-c743-4e4f-8609-559874f26d6c","bankA'\
      'ccountOwnershipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD"'\
      ',"createdOn":"2022-05-20T16:26:25Z","description":"Official USD Testing'\
      ' Bank Account 2","fields":[{"key":"BANK_BBAN","value":"****7899"},{"key'\
      '":"BANK_ACH_ABA","value":"****5688"},{"key":"BENEFICIARY_NAME","value":'\
      '"Harry Grady"},{"key":"BANK_NAME","value":"API V2 USD BANK 2"}],"status'\
      '":"VERIFIED","type":"SAVINGS","links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-'\
      'accounts/dest-969daa60-c743-4e4f-8609-559874f26d6c","params":{"rel":"se'\
      'lf"}}]}],"meta":{"pageNo":"1","pageSize":"5","pageCount":"1","recordCou'\
      'nt":"1","timezone":"GMT","requestRef":"request-reference-value"},"links'\
      '":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae92315'\
      'b-6190-4e56-bdf5-c0189ac420a1/bank-accounts?page=1&pageSize=5&language='\
      'en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [bank account](page:resources/bank-accounts) using a user token.
  #
  def test_create_bank_account
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_bank_account(user_token, body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a [bank account](page:resources/bank-accounts) using a user token.
  #
  def test_create_bank_account1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_bank_account(user_token, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [bank account](page:resources/bank-accounts) using a destination token.
  #
  def test_retrieve_bank_account
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_bank_account(user_token, destination_token,
                                               page, page_size, filter: filter,
                                               sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Update a [bank account](page:resources/bank-accounts).
  #
  def test_update_bank_account
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.update_bank_account(user_token, destination_token,
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
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Delete a user [bank account](page:resources/bank-accounts).
  #
  def test_delete_bank_account
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.delete_bank_account(user_token, destination_token)

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

  # Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the parameters provided.
  #
  def test_retrieve_creation_requirements
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    country = 'US'
    currency = 'USD'

    # Perform the API call through the SDK function
    result = @controller.retrieve_creation_requirements(user_token,
                                                        country: country,
                                                        currency: currency)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"bankCountry":"IT","bankCurrency":"EUR","requirements":[{"'\
      'requirement":"BANK_IBAN","format":{"example":"IT43K03104127010000008204'\
      '20","legend":[{"key":"IT43K0310412701000000820420","descriptions":[{"la'\
      'nguage":"en-US","translation":"Example IBAN"},{"language":"it-IT","tran'\
      'slation":"Esempio IBAN"}]}]},"description":[{"language":"en-US","transl'\
      'ation":"IBAN"},{"language":"it-IT","translation":"IBAN"}],"validators":'\
      '[{"validatorType":"REGEX","expression":"^IT\\\\\\\\d{2}[A-Z]\\\\\\\\d{1'\
      '0}[0-9A-Z]{12}$"}]},{"requirement":"BANK_SWIFT_BIC","format":{"example"'\
      ':"01234567890","legend":[{"key":"01234567890","descriptions":[{"languag'\
      'e":"en-US","translation":"Example Swift/BIC"},{"language":"it-IT","tran'\
      'slation":"Esempio Swift/BIC"}]}]},"description":[{"language":"en-US","t'\
      'ranslation":"Swift/BIC"},{"language":"it-IT","translation":"Swift/BIC"}'\
      '],"validators":[{"validatorType":"REGEX","expression":"^[a-z0-9A-Z]{8,1'\
      '1}$"}]}],"quote":{"formattedAmount":"$4.32 USD (USD, en-US), 0,00 â‚¬ E'\
      'UR (EUR, fr-FR)","amount":4.32,"currency":"USD"},"links":[{"params":{"r'\
      'el":"self"},"href":"string"}]}],"links":[{"params":{"rel":"self"},"href'\
      '":"string"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of company [bank accounts](page:resources/bank-accounts) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_company_bank_accounts
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_company_bank_accounts(account_token, page,
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
      '{"payload":[{"token":"dest-969daa60-c743-4e4f-8609-559874f26d6c","bankA'\
      'ccountOwnershipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD"'\
      ',"createdOn":"2022-05-20T16:26:25Z","description":"Official USD Testing'\
      ' Bank Account 2","fields":[{"key":"BANK_BBAN","value":"****7899"},{"key'\
      '":"BANK_ACH_ABA","value":"****5688"},{"key":"BENEFICIARY_NAME","value":'\
      '"Harry Grady"},{"key":"BANK_NAME","value":"API V2 USD BANK 2"}],"status'\
      '":"VERIFIED","type":"SAVINGS","links":[{"href":"https://api.sandbox.pay'\
      'quicker.io/api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-'\
      'accounts/dest-969daa60-c743-4e4f-8609-559874f26d6c","params":{"rel":"se'\
      'lf"}}]}],"meta":{"pageNo":"1","pageSize":"5","pageCount":"1","recordCou'\
      'nt":"1","timezone":"GMT","requestRef":"request-reference-value"},"links'\
      '":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-ae92315'\
      'b-6190-4e56-bdf5-c0189ac420a1/bank-accounts?page=1&pageSize=5&language='\
      'en-US","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a company [bank account](page:resources/bank-accounts) using an account token.
  #
  def test_create_company_bank_account
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_company_bank_account(account_token, body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a company [bank account](page:resources/bank-accounts) using an account token.
  #
  def test_create_company_bank_account1
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.create_company_bank_account(account_token, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single company [bank account](page:resources/bank-accounts) using a destination token.
  #
  def test_retrieve_company_bank_account
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_company_bank_account(account_token,
                                                       destination_token, page,
                                                       page_size,
                                                       filter: filter,
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
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Update a company [bank account](page:resources/bank-accounts).
  #
  def test_update_company_bank_account
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    body = CreateOrUpdateBankAccount.from_hash(APIHelper.json_deserialize(
      '{"bankAccountOwnershipType":"BUSINESS","description":"Official USD Test'\
      'ing Bank Account 1","bankCountry":"US","bankCurrency":"USD","type":"SAV'\
      'INGS","fields":[{"key":"BANK_BBAN","value":"01234567890"},{"key":"BANK_'\
      'ACH_ABA","value":"012345678"},{"key":"BANK_NAME","value":"API V2 USD BA'\
      'NK 1"},{"key":"BENEFICIARY_NAME","value":"Hazel Mosciski"}]}', false))

    # Perform the API call through the SDK function
    result = @controller.update_company_bank_account(account_token,
                                                     destination_token,
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
      '{"token":"dest-41579f58-35dd-4f7b-9252-aa3e337a2eb4","bankAccountOwners'\
      'hipType":"BUSINESS","bankCountry":"US","bankCurrency":"USD","createdOn"'\
      ':"2022-05-20T15:48:54Z","description":"Official USD Testing Bank Accoun'\
      't 1","fields":[{"key":"BANK_BBAN","value":"****7890"},{"key":"BANK_ACH_'\
      'ABA","value":"****5678"},{"key":"BENEFICIARY_NAME","value":"Dennis Brue'\
      'n"},{"key":"BANK_NAME","value":"API V2 USD BANK 1"}],"status":"VERIFIED'\
      '","type":"SAVINGS","links":[{"href":"https://api.sandbox.payquicker.io/'\
      'api/v2/users/user-ae92315b-6190-4e56-bdf5-c0189ac420a1/bank-accounts/de'\
      'st-41579f58-35dd-4f7b-9252-aa3e337a2eb4","params":{"rel":"self"}}],"met'\
      'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Delete a company [bank account](page:resources/bank-accounts).
  #
  def test_delete_company_bank_account
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'

    # Perform the API call through the SDK function
    result = @controller.delete_company_bank_account(account_token,
                                                     destination_token)

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

  # Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the parameters provided.
  #
  def test_retrieve_company_bank_account_creation_requirements
    # Parameters for the API call
    account_token = 'acct-3908ab5a-6ce1-474d-8b80-a63a7b147860'
    country = 'US'
    currency = 'USD'

    # Perform the API call through the SDK function
    result = @controller.retrieve_company_bank_account_creation_requirements(
      account_token, country: country, currency: currency
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
      '{"payload":[{"bankCountry":"IT","bankCurrency":"EUR","requirements":[{"'\
      'requirement":"BANK_IBAN","format":{"example":"IT43K03104127010000008204'\
      '20","legend":[{"key":"IT43K0310412701000000820420","descriptions":[{"la'\
      'nguage":"en-US","translation":"Example IBAN"},{"language":"it-IT","tran'\
      'slation":"Esempio IBAN"}]}]},"description":[{"language":"en-US","transl'\
      'ation":"IBAN"},{"language":"it-IT","translation":"IBAN"}],"validators":'\
      '[{"validatorType":"REGEX","expression":"^IT\\\\\\\\d{2}[A-Z]\\\\\\\\d{1'\
      '0}[0-9A-Z]{12}$"}]},{"requirement":"BANK_SWIFT_BIC","format":{"example"'\
      ':"01234567890","legend":[{"key":"01234567890","descriptions":[{"languag'\
      'e":"en-US","translation":"Example Swift/BIC"},{"language":"it-IT","tran'\
      'slation":"Esempio Swift/BIC"}]}]},"description":[{"language":"en-US","t'\
      'ranslation":"Swift/BIC"},{"language":"it-IT","translation":"Swift/BIC"}'\
      '],"validators":[{"validatorType":"REGEX","expression":"^[a-z0-9A-Z]{8,1'\
      '1}$"}]}],"quote":{"formattedAmount":"$4.32 USD (USD, en-US), 0,00 â‚¬ E'\
      'UR (EUR, fr-FR)","amount":4.32,"currency":"USD"},"links":[{"params":{"r'\
      'el":"self"},"href":"string"}]}],"links":[{"params":{"rel":"self"},"href'\
      '":"string"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve requirements for adding a [bank account](page:resources/bank-accounts) using the pre-paid card as the destination.
  #
  def test_retrieve_bank_account_creation_requirements_for_a_prepaid_card
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    destination_token = 'dest-4aed86e2-4929-45bf-814d-9030aef21e79'
    country = 'US'
    currency = 'USD'

    # Perform the API call through the SDK function
    result = @controller.retrieve_bank_account_creation_requirements_for_a_prepaid_card(
      user_token, destination_token, country: country, currency: currency
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
      '{"payload":[{"bankCountry":"IT","bankCurrency":"EUR","requirements":[{"'\
      'requirement":"BANK_IBAN","format":{"example":"IT43K03104127010000008204'\
      '20","legend":[{"key":"IT43K0310412701000000820420","descriptions":[{"la'\
      'nguage":"en-US","translation":"Example IBAN"},{"language":"it-IT","tran'\
      'slation":"Esempio IBAN"}]}]},"description":[{"language":"en-US","transl'\
      'ation":"IBAN"},{"language":"it-IT","translation":"IBAN"}],"validators":'\
      '[{"validatorType":"REGEX","expression":"^IT\\\\\\\\d{2}[A-Z]\\\\\\\\d{1'\
      '0}[0-9A-Z]{12}$"}]},{"requirement":"BANK_SWIFT_BIC","format":{"example"'\
      ':"01234567890","legend":[{"key":"01234567890","descriptions":[{"languag'\
      'e":"en-US","translation":"Example Swift/BIC"},{"language":"it-IT","tran'\
      'slation":"Esempio Swift/BIC"}]}]},"description":[{"language":"en-US","t'\
      'ranslation":"Swift/BIC"},{"language":"it-IT","translation":"Swift/BIC"}'\
      '],"validators":[{"validatorType":"REGEX","expression":"^[a-z0-9A-Z]{8,1'\
      '1}$"}]}],"quote":{"formattedAmount":"$4.32 USD (USD, en-US), 0,00 â‚¬ E'\
      'UR (EUR, fr-FR)","amount":4.32,"currency":"USD"},"links":[{"params":{"r'\
      'el":"self"},"href":"string"}]}],"links":[{"params":{"rel":"self"},"href'\
      '":"string"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end