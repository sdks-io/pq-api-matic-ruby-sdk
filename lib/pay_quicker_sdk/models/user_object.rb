# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # UserObject Model.
  class UserObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Token](#/rest/models/structures/token) representing the resource
    # @return [String]
    attr_accessor :token

    # Address Line 1
    # @return [String]
    attr_accessor :address_line1

    # Address Line 1
    # @return [String]
    attr_accessor :address_line2

    # Address Line 1
    # @return [String]
    attr_accessor :address_line3

    # Business address line 1
    # @return [String]
    attr_accessor :business_address_line1

    # Business address line 2
    # @return [String]
    attr_accessor :business_address_line2

    # Business address line 3
    # @return [String]
    attr_accessor :business_address_line3

    # Classifies the [address](#/rest/models/structures/address) type
    # (*Residential*, *Business*, *Billing*, *Shipping*)
    # @return [Addresses]
    attr_accessor :business_address_type

    # Business city
    # @return [String]
    attr_accessor :business_city

    # Business contact role
    # @return [BusinessContactRoles]
    attr_accessor :business_contact_role

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :business_country

    # Business name
    # @return [String]
    attr_accessor :business_name

    # Business name
    # @return [String]
    attr_accessor :business_postal_code

    # Region that the business is based out of
    # @return [String]
    attr_accessor :business_region

    # Region that the business is based out of
    # @return [String]
    attr_accessor :city

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :country

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :country_of_birth

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :country_of_nationality

    # Time object was [created](#/rest/models/structures/created-on)
    # @return [DateTime]
    attr_accessor :created_on

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [DateTime]
    attr_accessor :date_of_birth

    # Contact [email address](#/rest/models/structures/email-address) for the
    # user account for the user account
    # @return [String]
    attr_accessor :email

    # Employer id
    # @return [String]
    attr_accessor :employer_id

    # First name
    # @return [String]
    attr_accessor :first_name

    # [Gender](#/rest/models/structures/gender) as a user identifies
    # @return [Genders]
    attr_accessor :gender

    # [Gender](#/rest/models/structures/gender) as a user identifies
    # @return [String]
    attr_accessor :government_id

    # Indicates the type of ID submitted for user verification purposes.
    # @return [GovernmentIds]
    attr_accessor :government_id_type

    # The [Language](#/rest/models/structures/language) type in IETF's BCP 47
    # format
    # @return [Languages]
    attr_accessor :language

    # Last name
    # @return [String]
    attr_accessor :last_name

    # Last name
    # @return [String]
    attr_accessor :mailing_address_line1

    # Last name
    # @return [String]
    attr_accessor :mailing_address_line2

    # Last name
    # @return [String]
    attr_accessor :mailing_address_line3

    # Last name
    # @return [String]
    attr_accessor :mailing_city

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :mailing_country

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [String]
    attr_accessor :mailing_postal_code

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [String]
    attr_accessor :mailing_region

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [String]
    attr_accessor :mobile_number

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :mobile_number_country

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [String]
    attr_accessor :occupation_title

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [Occupations]
    attr_accessor :occupation_type

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [String]
    attr_accessor :phone_number

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :phone_number_country

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [String]
    attr_accessor :postal_code

    # [Program identifier](#/rest/models/structures/program-user-id) for the
    # user
    # @return [String]
    attr_accessor :program_user_id

    # [Program identifier](#/rest/models/structures/program-user-id) for the
    # user
    # @return [String]
    attr_accessor :region

    # Status of the user [User status
    # type](#/rest/models/structures/user-status)
    # @return [UserStatuses]
    attr_accessor :status

    # Tax [resident status type](#/rest/models/structures/tax-resident-status)
    # @return [TaxResidentStatuses]
    attr_accessor :tax_resident_status

    # Account holder's profile [type](#/rest/models/structures/user-type)
    # @return [UserTypes]
    attr_accessor :user_type

    # Account holder's profile [type](#/rest/models/structures/user-type)
    # @return [Array[HateoasSelfRef]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['token'] = 'token'
      @_hash['address_line1'] = 'addressLine1'
      @_hash['address_line2'] = 'addressLine2'
      @_hash['address_line3'] = 'addressLine3'
      @_hash['business_address_line1'] = 'businessAddressLine1'
      @_hash['business_address_line2'] = 'businessAddressLine2'
      @_hash['business_address_line3'] = 'businessAddressLine3'
      @_hash['business_address_type'] = 'businessAddressType'
      @_hash['business_city'] = 'businessCity'
      @_hash['business_contact_role'] = 'businessContactRole'
      @_hash['business_country'] = 'businessCountry'
      @_hash['business_name'] = 'businessName'
      @_hash['business_postal_code'] = 'businessPostalCode'
      @_hash['business_region'] = 'businessRegion'
      @_hash['city'] = 'city'
      @_hash['country'] = 'country'
      @_hash['country_of_birth'] = 'countryOfBirth'
      @_hash['country_of_nationality'] = 'countryOfNationality'
      @_hash['created_on'] = 'createdOn'
      @_hash['currency'] = 'currency'
      @_hash['date_of_birth'] = 'dateOfBirth'
      @_hash['email'] = 'email'
      @_hash['employer_id'] = 'employerId'
      @_hash['first_name'] = 'firstName'
      @_hash['gender'] = 'gender'
      @_hash['government_id'] = 'governmentId'
      @_hash['government_id_type'] = 'governmentIdType'
      @_hash['language'] = 'language'
      @_hash['last_name'] = 'lastName'
      @_hash['mailing_address_line1'] = 'mailingAddressLine1'
      @_hash['mailing_address_line2'] = 'mailingAddressLine2'
      @_hash['mailing_address_line3'] = 'mailingAddressLine3'
      @_hash['mailing_city'] = 'mailingCity'
      @_hash['mailing_country'] = 'mailingCountry'
      @_hash['mailing_postal_code'] = 'mailingPostalCode'
      @_hash['mailing_region'] = 'mailingRegion'
      @_hash['mobile_number'] = 'mobileNumber'
      @_hash['mobile_number_country'] = 'mobileNumberCountry'
      @_hash['occupation_title'] = 'occupationTitle'
      @_hash['occupation_type'] = 'occupationType'
      @_hash['phone_number'] = 'phoneNumber'
      @_hash['phone_number_country'] = 'phoneNumberCountry'
      @_hash['postal_code'] = 'postalCode'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['region'] = 'region'
      @_hash['status'] = 'status'
      @_hash['tax_resident_status'] = 'taxResidentStatus'
      @_hash['user_type'] = 'userType'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        token
        address_line1
        address_line2
        address_line3
        business_address_line1
        business_address_line2
        business_address_line3
        business_address_type
        business_city
        business_contact_role
        business_country
        business_name
        business_postal_code
        business_region
        city
        country
        country_of_birth
        country_of_nationality
        created_on
        currency
        date_of_birth
        email
        employer_id
        first_name
        gender
        government_id
        government_id_type
        language
        last_name
        mailing_address_line1
        mailing_address_line2
        mailing_address_line3
        mailing_city
        mailing_country
        mailing_postal_code
        mailing_region
        mobile_number
        mobile_number_country
        occupation_title
        occupation_type
        phone_number
        phone_number_country
        postal_code
        program_user_id
        region
        status
        tax_resident_status
        user_type
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(token = SKIP, address_line1 = SKIP, address_line2 = SKIP,
                   address_line3 = SKIP, business_address_line1 = SKIP,
                   business_address_line2 = SKIP, business_address_line3 = SKIP,
                   business_address_type = SKIP, business_city = SKIP,
                   business_contact_role = SKIP, business_country = SKIP,
                   business_name = SKIP, business_postal_code = SKIP,
                   business_region = SKIP, city = SKIP, country = SKIP,
                   country_of_birth = SKIP, country_of_nationality = SKIP,
                   created_on = SKIP, currency = Currencies::USD,
                   date_of_birth = SKIP, email = SKIP, employer_id = SKIP,
                   first_name = SKIP, gender = SKIP, government_id = SKIP,
                   government_id_type = SKIP, language = SKIP, last_name = SKIP,
                   mailing_address_line1 = SKIP, mailing_address_line2 = SKIP,
                   mailing_address_line3 = SKIP, mailing_city = SKIP,
                   mailing_country = SKIP, mailing_postal_code = SKIP,
                   mailing_region = SKIP, mobile_number = SKIP,
                   mobile_number_country = SKIP, occupation_title = SKIP,
                   occupation_type = SKIP, phone_number = SKIP,
                   phone_number_country = SKIP, postal_code = SKIP,
                   program_user_id = SKIP, region = SKIP, status = SKIP,
                   tax_resident_status = SKIP, user_type = SKIP, links = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @token = token unless token == SKIP
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @address_line3 = address_line3 unless address_line3 == SKIP
      @business_address_line1 = business_address_line1 unless business_address_line1 == SKIP
      @business_address_line2 = business_address_line2 unless business_address_line2 == SKIP
      @business_address_line3 = business_address_line3 unless business_address_line3 == SKIP
      @business_address_type = business_address_type unless business_address_type == SKIP
      @business_city = business_city unless business_city == SKIP
      @business_contact_role = business_contact_role unless business_contact_role == SKIP
      @business_country = business_country unless business_country == SKIP
      @business_name = business_name unless business_name == SKIP
      @business_postal_code = business_postal_code unless business_postal_code == SKIP
      @business_region = business_region unless business_region == SKIP
      @city = city unless city == SKIP
      @country = country unless country == SKIP
      @country_of_birth = country_of_birth unless country_of_birth == SKIP
      @country_of_nationality = country_of_nationality unless country_of_nationality == SKIP
      @created_on = created_on unless created_on == SKIP
      @currency = currency unless currency == SKIP
      @date_of_birth = date_of_birth unless date_of_birth == SKIP
      @email = email unless email == SKIP
      @employer_id = employer_id unless employer_id == SKIP
      @first_name = first_name unless first_name == SKIP
      @gender = gender unless gender == SKIP
      @government_id = government_id unless government_id == SKIP
      @government_id_type = government_id_type unless government_id_type == SKIP
      @language = language unless language == SKIP
      @last_name = last_name unless last_name == SKIP
      @mailing_address_line1 = mailing_address_line1 unless mailing_address_line1 == SKIP
      @mailing_address_line2 = mailing_address_line2 unless mailing_address_line2 == SKIP
      @mailing_address_line3 = mailing_address_line3 unless mailing_address_line3 == SKIP
      @mailing_city = mailing_city unless mailing_city == SKIP
      @mailing_country = mailing_country unless mailing_country == SKIP
      @mailing_postal_code = mailing_postal_code unless mailing_postal_code == SKIP
      @mailing_region = mailing_region unless mailing_region == SKIP
      @mobile_number = mobile_number unless mobile_number == SKIP
      @mobile_number_country = mobile_number_country unless mobile_number_country == SKIP
      @occupation_title = occupation_title unless occupation_title == SKIP
      @occupation_type = occupation_type unless occupation_type == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @phone_number_country = phone_number_country unless phone_number_country == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @region = region unless region == SKIP
      @status = status unless status == SKIP
      @tax_resident_status = tax_resident_status unless tax_resident_status == SKIP
      @user_type = user_type unless user_type == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      token = hash.key?('token') ? hash['token'] : SKIP
      address_line1 = hash.key?('addressLine1') ? hash['addressLine1'] : SKIP
      address_line2 = hash.key?('addressLine2') ? hash['addressLine2'] : SKIP
      address_line3 = hash.key?('addressLine3') ? hash['addressLine3'] : SKIP
      business_address_line1 =
        hash.key?('businessAddressLine1') ? hash['businessAddressLine1'] : SKIP
      business_address_line2 =
        hash.key?('businessAddressLine2') ? hash['businessAddressLine2'] : SKIP
      business_address_line3 =
        hash.key?('businessAddressLine3') ? hash['businessAddressLine3'] : SKIP
      business_address_type =
        hash.key?('businessAddressType') ? hash['businessAddressType'] : SKIP
      business_city = hash.key?('businessCity') ? hash['businessCity'] : SKIP
      business_contact_role =
        hash.key?('businessContactRole') ? hash['businessContactRole'] : SKIP
      business_country =
        hash.key?('businessCountry') ? hash['businessCountry'] : SKIP
      business_name = hash.key?('businessName') ? hash['businessName'] : SKIP
      business_postal_code =
        hash.key?('businessPostalCode') ? hash['businessPostalCode'] : SKIP
      business_region =
        hash.key?('businessRegion') ? hash['businessRegion'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      country_of_birth =
        hash.key?('countryOfBirth') ? hash['countryOfBirth'] : SKIP
      country_of_nationality =
        hash.key?('countryOfNationality') ? hash['countryOfNationality'] : SKIP
      created_on = if hash.key?('createdOn')
                     (DateTimeHelper.from_rfc3339(hash['createdOn']) if hash['createdOn'])
                   else
                     SKIP
                   end
      currency = hash['currency'] ||= Currencies::USD
      date_of_birth = if hash.key?('dateOfBirth')
                        (DateTimeHelper.from_rfc3339(hash['dateOfBirth']) if hash['dateOfBirth'])
                      else
                        SKIP
                      end
      email = hash.key?('email') ? hash['email'] : SKIP
      employer_id = hash.key?('employerId') ? hash['employerId'] : SKIP
      first_name = hash.key?('firstName') ? hash['firstName'] : SKIP
      gender = hash.key?('gender') ? hash['gender'] : SKIP
      government_id = hash.key?('governmentId') ? hash['governmentId'] : SKIP
      government_id_type =
        hash.key?('governmentIdType') ? hash['governmentIdType'] : SKIP
      language = hash.key?('language') ? hash['language'] : SKIP
      last_name = hash.key?('lastName') ? hash['lastName'] : SKIP
      mailing_address_line1 =
        hash.key?('mailingAddressLine1') ? hash['mailingAddressLine1'] : SKIP
      mailing_address_line2 =
        hash.key?('mailingAddressLine2') ? hash['mailingAddressLine2'] : SKIP
      mailing_address_line3 =
        hash.key?('mailingAddressLine3') ? hash['mailingAddressLine3'] : SKIP
      mailing_city = hash.key?('mailingCity') ? hash['mailingCity'] : SKIP
      mailing_country =
        hash.key?('mailingCountry') ? hash['mailingCountry'] : SKIP
      mailing_postal_code =
        hash.key?('mailingPostalCode') ? hash['mailingPostalCode'] : SKIP
      mailing_region = hash.key?('mailingRegion') ? hash['mailingRegion'] : SKIP
      mobile_number = hash.key?('mobileNumber') ? hash['mobileNumber'] : SKIP
      mobile_number_country =
        hash.key?('mobileNumberCountry') ? hash['mobileNumberCountry'] : SKIP
      occupation_title =
        hash.key?('occupationTitle') ? hash['occupationTitle'] : SKIP
      occupation_type =
        hash.key?('occupationType') ? hash['occupationType'] : SKIP
      phone_number = hash.key?('phoneNumber') ? hash['phoneNumber'] : SKIP
      phone_number_country =
        hash.key?('phoneNumberCountry') ? hash['phoneNumberCountry'] : SKIP
      postal_code = hash.key?('postalCode') ? hash['postalCode'] : SKIP
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      region = hash.key?('region') ? hash['region'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      tax_resident_status =
        hash.key?('taxResidentStatus') ? hash['taxResidentStatus'] : SKIP
      user_type = hash.key?('userType') ? hash['userType'] : SKIP
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
      UserObject.new(token,
                     address_line1,
                     address_line2,
                     address_line3,
                     business_address_line1,
                     business_address_line2,
                     business_address_line3,
                     business_address_type,
                     business_city,
                     business_contact_role,
                     business_country,
                     business_name,
                     business_postal_code,
                     business_region,
                     city,
                     country,
                     country_of_birth,
                     country_of_nationality,
                     created_on,
                     currency,
                     date_of_birth,
                     email,
                     employer_id,
                     first_name,
                     gender,
                     government_id,
                     government_id_type,
                     language,
                     last_name,
                     mailing_address_line1,
                     mailing_address_line2,
                     mailing_address_line3,
                     mailing_city,
                     mailing_country,
                     mailing_postal_code,
                     mailing_region,
                     mobile_number,
                     mobile_number_country,
                     occupation_title,
                     occupation_type,
                     phone_number,
                     phone_number_country,
                     postal_code,
                     program_user_id,
                     region,
                     status,
                     tax_resident_status,
                     user_type,
                     links,
                     additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_date_of_birth
      DateTimeHelper.to_rfc3339(date_of_birth)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token}, address_line1: #{@address_line1}, address_line2:"\
      " #{@address_line2}, address_line3: #{@address_line3}, business_address_line1:"\
      " #{@business_address_line1}, business_address_line2: #{@business_address_line2},"\
      " business_address_line3: #{@business_address_line3}, business_address_type:"\
      " #{@business_address_type}, business_city: #{@business_city}, business_contact_role:"\
      " #{@business_contact_role}, business_country: #{@business_country}, business_name:"\
      " #{@business_name}, business_postal_code: #{@business_postal_code}, business_region:"\
      " #{@business_region}, city: #{@city}, country: #{@country}, country_of_birth:"\
      " #{@country_of_birth}, country_of_nationality: #{@country_of_nationality}, created_on:"\
      " #{@created_on}, currency: #{@currency}, date_of_birth: #{@date_of_birth}, email:"\
      " #{@email}, employer_id: #{@employer_id}, first_name: #{@first_name}, gender: #{@gender},"\
      " government_id: #{@government_id}, government_id_type: #{@government_id_type}, language:"\
      " #{@language}, last_name: #{@last_name}, mailing_address_line1: #{@mailing_address_line1},"\
      " mailing_address_line2: #{@mailing_address_line2}, mailing_address_line3:"\
      " #{@mailing_address_line3}, mailing_city: #{@mailing_city}, mailing_country:"\
      " #{@mailing_country}, mailing_postal_code: #{@mailing_postal_code}, mailing_region:"\
      " #{@mailing_region}, mobile_number: #{@mobile_number}, mobile_number_country:"\
      " #{@mobile_number_country}, occupation_title: #{@occupation_title}, occupation_type:"\
      " #{@occupation_type}, phone_number: #{@phone_number}, phone_number_country:"\
      " #{@phone_number_country}, postal_code: #{@postal_code}, program_user_id:"\
      " #{@program_user_id}, region: #{@region}, status: #{@status}, tax_resident_status:"\
      " #{@tax_resident_status}, user_type: #{@user_type}, links: #{@links},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} token: #{@token.inspect}, address_line1: #{@address_line1.inspect},"\
      " address_line2: #{@address_line2.inspect}, address_line3: #{@address_line3.inspect},"\
      " business_address_line1: #{@business_address_line1.inspect}, business_address_line2:"\
      " #{@business_address_line2.inspect}, business_address_line3:"\
      " #{@business_address_line3.inspect}, business_address_type:"\
      " #{@business_address_type.inspect}, business_city: #{@business_city.inspect},"\
      " business_contact_role: #{@business_contact_role.inspect}, business_country:"\
      " #{@business_country.inspect}, business_name: #{@business_name.inspect},"\
      " business_postal_code: #{@business_postal_code.inspect}, business_region:"\
      " #{@business_region.inspect}, city: #{@city.inspect}, country: #{@country.inspect},"\
      " country_of_birth: #{@country_of_birth.inspect}, country_of_nationality:"\
      " #{@country_of_nationality.inspect}, created_on: #{@created_on.inspect}, currency:"\
      " #{@currency.inspect}, date_of_birth: #{@date_of_birth.inspect}, email: #{@email.inspect},"\
      " employer_id: #{@employer_id.inspect}, first_name: #{@first_name.inspect}, gender:"\
      " #{@gender.inspect}, government_id: #{@government_id.inspect}, government_id_type:"\
      " #{@government_id_type.inspect}, language: #{@language.inspect}, last_name:"\
      " #{@last_name.inspect}, mailing_address_line1: #{@mailing_address_line1.inspect},"\
      " mailing_address_line2: #{@mailing_address_line2.inspect}, mailing_address_line3:"\
      " #{@mailing_address_line3.inspect}, mailing_city: #{@mailing_city.inspect},"\
      " mailing_country: #{@mailing_country.inspect}, mailing_postal_code:"\
      " #{@mailing_postal_code.inspect}, mailing_region: #{@mailing_region.inspect},"\
      " mobile_number: #{@mobile_number.inspect}, mobile_number_country:"\
      " #{@mobile_number_country.inspect}, occupation_title: #{@occupation_title.inspect},"\
      " occupation_type: #{@occupation_type.inspect}, phone_number: #{@phone_number.inspect},"\
      " phone_number_country: #{@phone_number_country.inspect}, postal_code:"\
      " #{@postal_code.inspect}, program_user_id: #{@program_user_id.inspect}, region:"\
      " #{@region.inspect}, status: #{@status.inspect}, tax_resident_status:"\
      " #{@tax_resident_status.inspect}, user_type: #{@user_type.inspect}, links:"\
      " #{@links.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
