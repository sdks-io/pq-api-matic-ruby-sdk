# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'json'
require 'minitest/autorun'
require 'minitest/hell'
require 'minitest/pride'
require 'minitest/proveit'
require 'pay_quicker_sdk'
require_relative '../http_response_catcher'

class ControllerTestBase < Minitest::Test
  parallelize_me!
  include PayQuickerSdk
  include CoreLibrary

  # Initializes the base test controller
  def setup_class
    @client = Client.from_env(http_callback: HttpResponseCatcher.new)

    _config = @client.config  end
end
