# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class DocumentsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.documents
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of user [documents](page:resources/documents) that supports filtering, sorting, and pagination through existing mechanisms.
  def test_list_documents
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_documents(user_token, page, page_size,
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
      '{"payload":[{"createDate":"2022-05-04T18:59:38Z","fields":[{"key":"TYPE'\
      '","value":"DRIVERS_LICENSE"},{"key":"STATUS","value":"PROVIDED"},{"key"'\
      ':"EXPIRATION_DATE","value":"10-31-2021"}],"filename":"List.jpg","mimeTy'\
      'pe":"image/jpeg","token":"docu-2053aaad-c1a5-45e2-a2da-f71287f32800","l'\
      'inks":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-2bb'\
      'fc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-c1a5-45e2-a2d'\
      'a-f71287f32800","params":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageS'\
      'ize":"2","pageCount":"0","recordCount":"0","timezone":"GMT","requestRef'\
      '":"request-reference-value"},"links":[{"href":"https://api.sandbox.payq'\
      'uicker.io/api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/docume'\
      'nts?page=1&pageSize=2","params":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Upload a user [document](page:resources/documents).
  #
  def test_upload_document
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    fields = CreateOrUpdateDocumentFields.from_hash(APIHelper.json_deserialize(
      '{"fields":[{"key":"EXPIRATION_DATE","value":"string"}]}', false))
    upload = nil

    begin
      # Perform the API call through the SDK function
      result = @controller.upload_document(user_token, fields: fields,
                                           upload: upload)

      # Test response code
      assert_equal(200, @response_catcher.response.status_code)
      # Test headers
      expected_headers = {}
      expected_headers['content-type'] = 'application/json; charset=utf-8'

      assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

      # Test whether the captured response is as we expected
      refute_nil(result)
      expected_body = JSON.parse(
        '{"createDate":"2022-05-04T18:59:38Z","fields":[{"key":"EXPIRATION_DAT'\
        'E","value":"10-31-2021"},{"key":"TYPE","value":"DRIVERS_LICENSE"},{"k'\
        'ey":"STATUS","value":"PROVIDED"}],"token":"docu-2053aaad-c1a5-45e2-a2'\
        'da-f71287f32800","links":[{"href":"https://api.sandbox.payquicker.io/'\
        'api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu'\
        '-2053aaad-c1a5-45e2-a2da-f71287f32800","params":{"rel":"self"}}],"met'\
        'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
      )
      received_body = JSON.parse(@response_catcher.response.raw_body)
      assert(ComparisonHelper.match_body(expected_body, received_body))
    ensure
      upload.close
    end
  end

  # Upload a user [document](page:resources/documents).
  #
  def test_upload_document1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    fields = CreateOrUpdateDocumentFields.from_hash(APIHelper.json_deserialize(
      '{"fields":[{"key":"EXPIRATION_DATE","value":"string"}]}', false))
    upload = nil

    begin
      # Perform the API call through the SDK function
      result = @controller.upload_document(user_token, fields: fields,
                                           upload: upload)

      # Test response code
      assert_equal(201, @response_catcher.response.status_code)
      # Test headers
      expected_headers = {}
      expected_headers['content-type'] = 'application/json; charset=utf-8'

      assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

      # Test whether the captured response is as we expected
      refute_nil(result)
      expected_body = JSON.parse(
        '{"createDate":"2022-05-04T18:59:38Z","fields":[{"key":"EXPIRATION_DAT'\
        'E","value":"10-31-2021"},{"key":"TYPE","value":"DRIVERS_LICENSE"},{"k'\
        'ey":"STATUS","value":"PROVIDED"}],"token":"docu-2053aaad-c1a5-45e2-a2'\
        'da-f71287f32800","links":[{"href":"https://api.sandbox.payquicker.io/'\
        'api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu'\
        '-2053aaad-c1a5-45e2-a2da-f71287f32800","params":{"rel":"self"}}],"met'\
        'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
      )
      received_body = JSON.parse(@response_catcher.response.raw_body)
      assert(ComparisonHelper.match_body(expected_body, received_body))
    ensure
      upload.close
    end
  end

  # Retrieve a single user [document](page:resources/documents) by its document token.
  #
  def test_retrieve_document
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'

    # Perform the API call through the SDK function
    result = @controller.retrieve_document(user_token, document_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"createDate":"2022-05-04T18:59:38Z","fields":[{"key":"EXPIRATION_DATE"'\
      ',"value":"10-31-2021"},{"key":"TYPE","value":"DRIVERS_LICENSE"},{"key":'\
      '"STATUS","value":"PROVIDED"}],"token":"docu-2053aaad-c1a5-45e2-a2da-f71'\
      '287f32800","links":[{"href":"https://api.sandbox.payquicker.io/api/v2/u'\
      'sers/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu-2053aaad-'\
      'c1a5-45e2-a2da-f71287f32800","params":{"rel":"self"}}],"meta":{"timezon'\
      'e":"GMT","requestRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Replace the user [documents](page:resources/documents) at the given document token.
  #
  def test_replace_document
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    document_token = 'docu-6e582242-5dd4-4883-b0c2-488e09a26595'
    fields = CreateOrUpdateDocumentFields.from_hash(APIHelper.json_deserialize(
      '{"fields":[{"key":"EXPIRATION_DATE","value":"string"}]}', false))
    upload = nil

    begin
      # Perform the API call through the SDK function
      result = @controller.replace_document(user_token, document_token,
                                            fields: fields, upload: upload)

      # Test response code
      assert_equal(200, @response_catcher.response.status_code)
      # Test headers
      expected_headers = {}
      expected_headers['content-type'] = 'application/json; charset=utf-8'

      assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

      # Test whether the captured response is as we expected
      refute_nil(result)
      expected_body = JSON.parse(
        '{"createDate":"2022-05-04T18:59:38Z","fields":[{"key":"EXPIRATION_DAT'\
        'E","value":"10-31-2021"},{"key":"TYPE","value":"DRIVERS_LICENSE"},{"k'\
        'ey":"STATUS","value":"PROVIDED"}],"token":"docu-2053aaad-c1a5-45e2-a2'\
        'da-f71287f32800","links":[{"href":"https://api.sandbox.payquicker.io/'\
        'api/v2/users/user-2bbfc967-d12e-4647-a887-d905172fb4bc/documents/docu'\
        '-2053aaad-c1a5-45e2-a2da-f71287f32800","params":{"rel":"self"}}],"met'\
        'a":{"timezone":"GMT","requestRef":"request-reference-value"}}'
      )
      received_body = JSON.parse(@response_catcher.response.raw_body)
      assert(ComparisonHelper.match_body(expected_body, received_body))
    ensure
      upload.close
    end
  end

end