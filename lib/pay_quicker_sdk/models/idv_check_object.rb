# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # IdvCheckObject Model.
  class IdvCheckObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :user_token

    # [Provider
    # reference](#/rest/models/structures/identity-verification-provider-referen
    # ce) used for performing identity checks for the provider
    # @return [String]
    attr_accessor :idv_provider_reference

    # Result type of
    # [verification](#/rest/models/structures/identity-verification-result-type)
    # @return [IdentityVerificationResultTypes]
    attr_accessor :idv_result

    # Sub result type of
    # [verification](#/rest/models/structures/identity-verification-sub-result-t
    # ype)
    # @return [IdentityVerificationResultSubTypes]
    attr_accessor :idv_sub_result

    # Provider types of
    # [verification](#/rest/models/structures/identity-verification-provider-typ
    # e) that can be used for performing identity checks
    # @return [IdentityVerificationProviders]
    attr_accessor :idv_provider

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # Contains the raw (unprocessed)
    # [output](/#/rest/models/structures/identity-verification-provider-raw-outp
    # ut) from the IDV provider
    # @return [String]
    attr_accessor :raw

    # [Type](#/rest/models/structures/identity-verification-check-type) of
    # verification used for performing an identity check
    # @return [String]
    attr_accessor :idv_check_type

    # Disposition type of
    # [verification](#/rest/models/structures/identity-verification-disposition-
    # type)
    # @return [String]
    attr_accessor :idv_disposition

    # Disposition type of
    # [verification](#/rest/models/structures/identity-verification-disposition-
    # type)
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['user_token'] = 'userToken'
      @_hash['idv_provider_reference'] = 'idvProviderReference'
      @_hash['idv_result'] = 'idvResult'
      @_hash['idv_sub_result'] = 'idvSubResult'
      @_hash['idv_provider'] = 'idvProvider'
      @_hash['created_on'] = 'createdOn'
      @_hash['raw'] = 'raw'
      @_hash['idv_check_type'] = 'idvCheckType'
      @_hash['idv_disposition'] = 'idvDisposition'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        user_token
        idv_provider_reference
        idv_result
        idv_sub_result
        idv_provider
        created_on
        raw
        idv_check_type
        idv_disposition
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, user_token = SKIP,
                   idv_provider_reference = SKIP, idv_result = SKIP,
                   idv_sub_result = SKIP, idv_provider = SKIP,
                   created_on = SKIP, raw = SKIP, idv_check_type = SKIP,
                   idv_disposition = SKIP, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @user_token = user_token unless user_token == SKIP
      @idv_provider_reference = idv_provider_reference unless idv_provider_reference == SKIP
      @idv_result = idv_result unless idv_result == SKIP
      @idv_sub_result = idv_sub_result unless idv_sub_result == SKIP
      @idv_provider = idv_provider unless idv_provider == SKIP
      @created_on = created_on unless created_on == SKIP
      @raw = raw unless raw == SKIP
      @idv_check_type = idv_check_type unless idv_check_type == SKIP
      @idv_disposition = idv_disposition unless idv_disposition == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      user_token = hash.key?('userToken') ? hash['userToken'] : SKIP
      idv_provider_reference =
        hash.key?('idvProviderReference') ? hash['idvProviderReference'] : SKIP
      idv_result = hash.key?('idvResult') ? hash['idvResult'] : SKIP
      idv_sub_result = hash.key?('idvSubResult') ? hash['idvSubResult'] : SKIP
      idv_provider = hash.key?('idvProvider') ? hash['idvProvider'] : SKIP
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      raw = hash.key?('raw') ? hash['raw'] : SKIP
      idv_check_type = hash.key?('idvCheckType') ? hash['idvCheckType'] : SKIP
      idv_disposition =
        hash.key?('idvDisposition') ? hash['idvDisposition'] : SKIP
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (HateoasSelfRef.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      IdvCheckObject.new(token,
                         user_token,
                         idv_provider_reference,
                         idv_result,
                         idv_sub_result,
                         idv_provider,
                         created_on,
                         raw,
                         idv_check_type,
                         idv_disposition,
                         links,
                         additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, user_token: #{@user_token}, idv_provider_reference:"\
      " #{@idv_provider_reference}, idv_result: #{@idv_result}, idv_sub_result:"\
      " #{@idv_sub_result}, idv_provider: #{@idv_provider}, created_on: #{@created_on}, raw:"\
      " #{@raw}, idv_check_type: #{@idv_check_type}, idv_disposition: #{@idv_disposition}, links:"\
      " #{@links}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, user_token: #{@user_token.inspect},"\
      " idv_provider_reference: #{@idv_provider_reference.inspect}, idv_result:"\
      " #{@idv_result.inspect}, idv_sub_result: #{@idv_sub_result.inspect}, idv_provider:"\
      " #{@idv_provider.inspect}, created_on: #{@created_on.inspect}, raw: #{@raw.inspect},"\
      " idv_check_type: #{@idv_check_type.inspect}, idv_disposition: #{@idv_disposition.inspect},"\
      " links: #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
