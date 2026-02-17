# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

class HttpResponseCatcher < PayQuickerSdk::HttpCallBack
  attr_reader :response

  def on_before_request(request)
  end

  # Catching the response
  def on_after_response(response)
    @response = response
  end
end



