# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ProgramControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.program
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [programs](page:resources/programs) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_programs
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_programs(page, page_size, filter: filter,
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
      '{"payload":[{"token":"prog-0146a716-4055-2598-ce14-df5ece519a98","curre'\
      'ncy":"USD","bank":"PATHWARD","electricWallets":[{"type":"TIGO_MONEY","e'\
      'lectronicWalletCountry":"SV","electronicWalletCurrency":"USD"},{"type":'\
      '"TIGO_MONEY","electronicWalletCountry":"GT","electronicWalletCurrency":'\
      '"GTQ"},{"type":"AIRTEL_MONEY","electronicWalletCountry":"TZ","electroni'\
      'cWalletCurrency":"TZS"},{"type":"MCASH","electronicWalletCountry":"LK",'\
      '"electronicWalletCurrency":"LKR"}],"type":"COMMERCIAL","links":[{"href"'\
      ':"https://api.sandbox.payquicker.io/api/v2/programs/prog-0146a716-4055-'\
      '2598-ce14-df5ece519a98","params":{"rel":"self"}}]},{"token":"prog-dbfe1'\
      '489-f3ba-3f5a-6904-9b9ad91ceaf6","currency":"MXN","bank":"PATHWARD","el'\
      'ectricWallets":[],"type":"COMMERCIAL","links":[{"href":"https://api.san'\
      'dbox.payquicker.io/api/v2/programs/prog-dbfe1489-f3ba-3f5a-6904-9b9ad91'\
      'ceaf6","params":{"rel":"self"}}]},{"token":"prog-8a9e37bf-d9a9-a40a-96c'\
      '4-e286d1fa8fc5","currency":"USD","bank":"PATHWARD","electricWallets":[{'\
      '"type":"TIGO_MONEY","electronicWalletCountry":"SV","electronicWalletCur'\
      'rency":"USD"},{"type":"TIGO_MONEY","electronicWalletCountry":"GT","elec'\
      'tronicWalletCurrency":"GTQ"},{"type":"AIRTEL_MONEY","electronicWalletCo'\
      'untry":"TZ","electronicWalletCurrency":"TZS"},{"type":"MCASH","electron'\
      'icWalletCountry":"LK","electronicWalletCurrency":"LKR"}],"type":"COMMER'\
      'CIAL","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/progra'\
      'ms/prog-8a9e37bf-d9a9-a40a-96c4-e286d1fa8fc5","params":{"rel":"self"}}]'\
      '},{"token":"prog-76f58bb0-c8ae-d0fa-d1e4-15143ffb53fa","currency":"EUR"'\
      ',"bank":"PPS","electricWallets":[],"type":"COMMERCIAL","links":[{"href"'\
      ':"https://api.sandbox.payquicker.io/api/v2/programs/prog-76f58bb0-c8ae-'\
      'd0fa-d1e4-15143ffb53fa","params":{"rel":"self"}}]},{"token":"prog-bbde3'\
      '9a9-04ca-1c0a-5d74-758a4ad47b84","currency":"GBP","bank":"PPS","electri'\
      'cWallets":[],"type":"COMMERCIAL","links":[{"href":"https://api.sandbox.'\
      'payquicker.io/api/v2/programs/prog-bbde39a9-04ca-1c0a-5d74-758a4ad47b84'\
      '","params":{"rel":"self"}}]},{"token":"prog-8136128b-3f5b-2f69-15a4-f25'\
      '592ebce51","currency":"MXN","bank":"PATHWARD","electricWallets":[],"typ'\
      'e":"COMMERCIAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/programs/prog-8136128b-3f5b-2f69-15a4-f25592ebce51","params":{"rel"'\
      ':"self"}}]},{"token":"prog-42469a3e-15c8-11f8-02a4-1053f176700e","curre'\
      'ncy":"EUR","bank":"PATHWARD","electricWallets":[{"type":"TIGO_MONEY","e'\
      'lectronicWalletCountry":"SV","electronicWalletCurrency":"USD"},{"type":'\
      '"TIGO_MONEY","electronicWalletCountry":"GT","electronicWalletCurrency":'\
      '"GTQ"},{"type":"AIRTEL_MONEY","electronicWalletCountry":"TZ","electroni'\
      'cWalletCurrency":"TZS"},{"type":"MCASH","electronicWalletCountry":"LK",'\
      '"electronicWalletCurrency":"LKR"}],"type":"COMMERCIAL","links":[{"href"'\
      ':"https://api.sandbox.payquicker.io/api/v2/programs/prog-42469a3e-15c8-'\
      '11f8-02a4-1053f176700e","params":{"rel":"self"}}]},{"token":"prog-f8725'\
      'c56-b289-8f4b-1f94-cd27f2963cbf","currency":"HKD","bank":"PATHWARD","el'\
      'ectricWallets":[],"type":"COMMERCIAL","links":[{"href":"https://api.san'\
      'dbox.payquicker.io/api/v2/programs/prog-f8725c56-b289-8f4b-1f94-cd27f29'\
      '63cbf","params":{"rel":"self"}}]},{"token":"prog-95753dc7-0b4a-65a9-7bd'\
      '4-6504b6774cb9","currency":"USD","bank":"MCB","electricWallets":[],"typ'\
      'e":"CONSUMER_GPR","links":[{"href":"https://api.sandbox.payquicker.io/a'\
      'pi/v2/programs/prog-95753dc7-0b4a-65a9-7bd4-6504b6774cb9","params":{"re'\
      'l":"self"}}]}],"meta":{"pageNo":"1","pageSize":"100","pageCount":"0","r'\
      'ecordCount":"0","timezone":"GMT","requestRef":"request-reference-value"'\
      '},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/programs",'\
      '"params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [program](page:resources/programs) by its program token.
  #
  def test_retrieve_program
    # Parameters for the API call
    program_token = 'prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_program(program_token, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb","currency":"USD","'\
      'bank":"MCB","electricWallets":[{"type":"TIGO_MONEY","electronicWalletCo'\
      'untry":"SV","electronicWalletCurrency":"USD"},{"type":"TIGO_MONEY","ele'\
      'ctronicWalletCountry":"GT","electronicWalletCurrency":"GTQ"},{"type":"A'\
      'IRTEL_MONEY","electronicWalletCountry":"TZ","electronicWalletCurrency":'\
      '"TZS"},{"type":"MCASH","electronicWalletCountry":"LK","electronicWallet'\
      'Currency":"LKR"}],"type":"CONSUMER_GPR","links":[{"href":"https://api.s'\
      'andbox.payquicker.io/api/v2/programs/prog-6a272eca-9487-d83a-c9e4-8df8c'\
      '9a7f6eb","params":{"rel":"self"}}],"meta":{"timezone":"GMT","requestRef'\
      '":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end