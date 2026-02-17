# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # JobsController
  class JobsController < BaseController
    # Retrieve a list of [jobs](page:resources/jobs) that supports filtering,
    # sorting, and pagination through existing mechanisms.
    # @param [Integer] page Required parameter: Page number of specific page to
    # return
    # @param [Integer] page_size Required parameter: Number of items to be
    # displayed per page
    # @param [String] filter Optional parameter: Filter request results by
    # specific criteria.
    # @param [String] sort Optional parameter: Sort request results by specific
    # attribute.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [PaymentJobListResult] Response from the API call.
    def list_payment_jobs(page,
                          page_size,
                          filter: nil,
                          sort: nil,
                          language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payments/jobs',
                                     Server::API)
                   .query_param(new_parameter(page, key: 'page')
                                 .is_required(true))
                   .query_param(new_parameter(page_size, key: 'pageSize')
                                 .is_required(true))
                   .query_param(new_parameter(filter, key: 'filter'))
                   .query_param(new_parameter(sort, key: 'sort'))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentJobListResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Create a [payment](page:resources/jobs).
    # @param [GatewayPaymentJob | PortalPaymentJob | nil] body Optional
    # parameter: TODO: type description here
    # @return [PaymentJobResult] Response from the API call.
    def create_payment_job(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/payments/jobs',
                                     Server::API)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .validator(proc do |value|
                                  UnionTypeLookUp.get(:PaymentJob)
                                                 .validate(value)
                                end))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(APIHelper.method(:json_serialize))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentJobResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Retrieve a single payment [job](page:resources/jobs).
    # @param [String] job_token Required parameter: Auto-generated unique
    # identifier representing a job, prefixed with `jobs-`.
    # @param [String] filter Optional parameter: Filter request results by
    # specific criteria.
    # @param [Languages] language Optional parameter: Filter results by language
    # type.
    # @return [PaymentJobResult] Response from the API call.
    def retrieve_payment_job(job_token,
                             filter: nil,
                             language: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payments/jobs/{job-token}',
                                     Server::API)
                   .template_param(new_parameter(job_token, key: 'job-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(filter, key: 'filter'))
                   .query_param(new_parameter(language, key: 'language'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentJobResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end

    # Cancel an submitted payment [job](page:resources/jobs).
    # @param [String] job_token Required parameter: Auto-generated unique
    # identifier representing a job, prefixed with `jobs-`.
    # @return [PaymentJobResult] Response from the API call.
    def cancel_payment_job(job_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/payments/jobs/{job-token}',
                                     Server::API)
                   .template_param(new_parameter(job_token, key: 'job-token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('server')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentJobResult.method(:from_hash))
                    .local_error('400',
                                 '',
                                 ApiErrorResultException)
                    .local_error('500',
                                 '',
                                 ApiErrorResultException)
                    .local_error('default',
                                 '',
                                 ApiErrorResultException))
        .execute
    end
  end
end
