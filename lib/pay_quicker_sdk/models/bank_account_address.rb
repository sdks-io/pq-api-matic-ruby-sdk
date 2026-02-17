# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # BankAccountAddress Model.
  class BankAccountAddress < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Address Line 1
    # @return [String]
    attr_accessor :address1

    # Address Line 1
    # @return [String]
    attr_accessor :address2

    # Address Line 1
    # @return [String]
    attr_accessor :address3

    # Address Line 1
    # @return [String]
    attr_accessor :city

    # Address Line 1
    # @return [String]
    attr_accessor :region

    # Address Line 1
    # @return [String]
    attr_accessor :postal_code

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :country

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address1'] = 'address1'
      @_hash['address2'] = 'address2'
      @_hash['address3'] = 'address3'
      @_hash['city'] = 'city'
      @_hash['region'] = 'region'
      @_hash['postal_code'] = 'postalCode'
      @_hash['country'] = 'country'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        address2
        address3
        region
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(address1 = nil, city = nil, postal_code = nil, country = nil,
                   address2 = SKIP, address3 = SKIP, region = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @address1 = address1
      @address2 = address2 unless address2 == SKIP
      @address3 = address3 unless address3 == SKIP
      @city = city
      @region = region unless region == SKIP
      @postal_code = postal_code
      @country = country
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address1 = hash.key?('address1') ? hash['address1'] : nil
      city = hash.key?('city') ? hash['city'] : nil
      postal_code = hash.key?('postalCode') ? hash['postalCode'] : nil
      country = hash.key?('country') ? hash['country'] : nil
      address2 = hash.key?('address2') ? hash['address2'] : SKIP
      address3 = hash.key?('address3') ? hash['address3'] : SKIP
      region = hash.key?('region') ? hash['region'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountAddress.new(address1,
                             city,
                             postal_code,
                             country,
                             address2,
                             address3,
                             region,
                             additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} address1: #{@address1}, address2: #{@address2}, address3: #{@address3},"\
      " city: #{@city}, region: #{@region}, postal_code: #{@postal_code}, country: #{@country},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} address1: #{@address1.inspect}, address2: #{@address2.inspect}, address3:"\
      " #{@address3.inspect}, city: #{@city.inspect}, region: #{@region.inspect}, postal_code:"\
      " #{@postal_code.inspect}, country: #{@country.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
