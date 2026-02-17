# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class JobsControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.jobs
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [jobs](page:resources/jobs) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_payment_jobs
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_payment_jobs(page, page_size, filter: filter,
                                           sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Create a [payment](page:resources/jobs).
  #
  def test_create_payment_job
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_payment_job(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Create a [payment](page:resources/jobs).
  #
  def test_create_payment_job1
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_payment_job(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Retrieve a single payment [job](page:resources/jobs).
  #
  def test_retrieve_payment_job
    # Parameters for the API call
    job_token = 'jobs-2bbfc967-d12e-4647-a887-d905172fb4bc'
    filter = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.retrieve_payment_job(job_token, filter: filter,
                                              language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Cancel an submitted payment [job](page:resources/jobs).
  #
  def test_cancel_payment_job
    # Parameters for the API call
    job_token = 'jobs-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.cancel_payment_job(job_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end