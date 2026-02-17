# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # _ApiErrorResult class.
  class ApiErrorResultException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # Error Severity
    # @return [String]
    attr_accessor :severity

    # Error Code Name
    # @return [String]
    attr_accessor :error

    # Error Code Number
    # @return [Float]
    attr_accessor :code

    # Description of the error.
    # @return [String]
    attr_accessor :message

    # Reference ID for issue tracking.
    # @return [String]
    attr_accessor :reference_id

    # Timestamp of when the error occurred.
    # @return [String]
    attr_accessor :timestamp

    # Request reference for issue tracking.
    # @return [String]
    attr_accessor :request_ref

    # The constructor.
    # @param [String] reason The reason for raising an exception.
    # @param [HttpResponse] response The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] hash The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      return nil unless hash

      @severity = hash.key?('severity') ? hash['severity'] : nil
      @error = hash.key?('error') ? hash['error'] : nil
      @code = hash.key?('code') ? hash['code'] : nil
      @message = hash.key?('message') ? hash['message'] : nil
      @reference_id = hash.key?('referenceId') ? hash['referenceId'] : nil
      @timestamp = hash.key?('timestamp') ? hash['timestamp'] : nil
      @request_ref = hash.key?('requestRef') ? hash['requestRef'] : SKIP
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} severity: #{@severity}, error: #{@error}, code: #{@code}, message:"\
      " #{@message}, reference_id: #{@reference_id}, timestamp: #{@timestamp}, request_ref:"\
      " #{@request_ref}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} severity: #{@severity.inspect}, error: #{@error.inspect}, code:"\
      " #{@code.inspect}, message: #{@message.inspect}, reference_id: #{@reference_id.inspect},"\
      " timestamp: #{@timestamp.inspect}, request_ref: #{@request_ref.inspect}>"
    end
  end
end
