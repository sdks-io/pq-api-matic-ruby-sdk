# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module PayQuickerSdk
  # CreateOrUpdateUser Model.
  class CreateOrUpdateUser < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # [Currency code type](#/rest/models/structures/country) for the object
    # @return [Currencies]
    attr_accessor :currency

    # [Program identifier](#/rest/models/structures/program-user-id) for the
    # user
    # @return [String]
    attr_accessor :program_user_id

    # Contact [email address](#/rest/models/structures/email-address) for the
    # user account for the user account
    # @return [String]
    attr_accessor :email

    # First name
    # @return [String]
    attr_accessor :first_name

    # Last name
    # @return [String]
    attr_accessor :last_name

    # Last name
    # @return [DateTime]
    attr_accessor :date_of_birth

    # Tax [resident status type](#/rest/models/structures/tax-resident-status)
    # @return [TaxResidentStatuses]
    attr_accessor :tax_resident_status

    # Tax [resident status type](#/rest/models/structures/tax-resident-status)
    # @return [String]
    attr_accessor :phone_number

    # Tax [resident status type](#/rest/models/structures/tax-resident-status)
    # @return [String]
    attr_accessor :mobile_number

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
    # @return [Countries]
    attr_accessor :mobile_number_country

    # Address Line 1
    # @return [String]
    attr_accessor :address_line1

    # Address Line 1
    # @return [String]
    attr_accessor :address_line2

    # Address Line 1
    # @return [String]
    attr_accessor :address_line3

    # Address Line 1
    # @return [String]
    attr_accessor :city

    # Address Line 1
    # @return [String]
    attr_accessor :region

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
    # @return [String]
    attr_accessor :postal_code

    # [Gender](#/rest/models/structures/gender) as a user identifies
    # @return [Genders]
    attr_accessor :gender

    # Account holder's profile [type](#/rest/models/structures/user-type)
    # @return [UserTypes]
    attr_accessor :user_type

    # The [Language](#/rest/models/structures/language) type in IETF's BCP 47
    # format
    # @return [Languages]
    attr_accessor :language

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

    # Business contact role
    # @return [BusinessContactRoles]
    attr_accessor :business_contact_role

    # Indicates the type of ID submitted for user verification purposes.
    # @return [GovernmentIds]
    attr_accessor :government_id_type

    # Indicates the type of ID submitted for user verification purposes.
    # @return [String]
    attr_accessor :government_id

    # Indicates the type of ID submitted for user verification purposes.
    # @return [String]
    attr_accessor :occupation_title

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [Occupations]
    attr_accessor :occupation_type

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [String]
    attr_accessor :mailing_address_line1

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [String]
    attr_accessor :mailing_address_line2

    # [Type of occupation](#/rest/models/structures/occupation) for the user
    # @return [String]
    attr_accessor :mailing_address_line3

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
    attr_accessor :mailing_city

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
    attr_accessor :mailing_postal_code

    # Business address line 1
    # @return [String]
    attr_accessor :business_address_line1

    # Business address line 2
    # @return [String]
    attr_accessor :business_address_line2

    # Business address line 3
    # @return [String]
    attr_accessor :business_address_line3

    # Throughout the PayQuicker API, the usage of the 2-letter alpha code is
    # used in place of the country name, e.g., for bank country or residential
    # country.
    # The 2-letter codes adhere to the ISO 3166-1 spec and are listed here for
    # convenience.
    # @return [Countries]
    attr_accessor :business_country

    # Business city
    # @return [String]
    attr_accessor :business_city

    # Region that the business is based out of
    # @return [String]
    attr_accessor :business_region

    # Region that the business is based out of
    # @return [String]
    attr_accessor :business_postal_code

    # Region that the business is based out of
    # @return [String]
    attr_accessor :premise_number

    # Auto-generated unique identifier representing a program, prefixed with
    # prog-
    # @return [String]
    attr_accessor :program_token

    # Auto-generated unique identifier representing a user, prefixed with
    # `user-`.
    # @return [String]
    attr_accessor :primary_user_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['program_user_id'] = 'programUserId'
      @_hash['email'] = 'email'
      @_hash['first_name'] = 'firstName'
      @_hash['last_name'] = 'lastName'
      @_hash['date_of_birth'] = 'dateOfBirth'
      @_hash['tax_resident_status'] = 'taxResidentStatus'
      @_hash['phone_number'] = 'phoneNumber'
      @_hash['mobile_number'] = 'mobileNumber'
      @_hash['phone_number_country'] = 'phoneNumberCountry'
      @_hash['mobile_number_country'] = 'mobileNumberCountry'
      @_hash['address_line1'] = 'addressLine1'
      @_hash['address_line2'] = 'addressLine2'
      @_hash['address_line3'] = 'addressLine3'
      @_hash['city'] = 'city'
      @_hash['region'] = 'region'
      @_hash['country'] = 'country'
      @_hash['postal_code'] = 'postalCode'
      @_hash['gender'] = 'gender'
      @_hash['user_type'] = 'userType'
      @_hash['language'] = 'language'
      @_hash['country_of_birth'] = 'countryOfBirth'
      @_hash['country_of_nationality'] = 'countryOfNationality'
      @_hash['business_contact_role'] = 'businessContactRole'
      @_hash['government_id_type'] = 'governmentIdType'
      @_hash['government_id'] = 'governmentId'
      @_hash['occupation_title'] = 'occupationTitle'
      @_hash['occupation_type'] = 'occupationType'
      @_hash['mailing_address_line1'] = 'mailingAddressLine1'
      @_hash['mailing_address_line2'] = 'mailingAddressLine2'
      @_hash['mailing_address_line3'] = 'mailingAddressLine3'
      @_hash['mailing_country'] = 'mailingCountry'
      @_hash['mailing_city'] = 'mailingCity'
      @_hash['mailing_region'] = 'mailingRegion'
      @_hash['mailing_postal_code'] = 'mailingPostalCode'
      @_hash['business_address_line1'] = 'businessAddressLine1'
      @_hash['business_address_line2'] = 'businessAddressLine2'
      @_hash['business_address_line3'] = 'businessAddressLine3'
      @_hash['business_country'] = 'businessCountry'
      @_hash['business_city'] = 'businessCity'
      @_hash['business_region'] = 'businessRegion'
      @_hash['business_postal_code'] = 'businessPostalCode'
      @_hash['premise_number'] = 'premiseNumber'
      @_hash['program_token'] = 'programToken'
      @_hash['primary_user_token'] = 'primaryUserToken'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        currency
        program_user_id
        email
        first_name
        last_name
        date_of_birth
        tax_resident_status
        phone_number
        mobile_number
        phone_number_country
        mobile_number_country
        address_line1
        address_line2
        address_line3
        city
        region
        country
        postal_code
        gender
        user_type
        language
        country_of_birth
        country_of_nationality
        business_contact_role
        government_id_type
        government_id
        occupation_title
        occupation_type
        mailing_address_line1
        mailing_address_line2
        mailing_address_line3
        mailing_country
        mailing_city
        mailing_region
        mailing_postal_code
        business_address_line1
        business_address_line2
        business_address_line3
        business_country
        business_city
        business_region
        business_postal_code
        premise_number
        program_token
        primary_user_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(currency = Currencies::USD, program_user_id = SKIP,
                   email = SKIP, first_name = SKIP, last_name = SKIP,
                   date_of_birth = SKIP, tax_resident_status = SKIP,
                   phone_number = SKIP, mobile_number = SKIP,
                   phone_number_country = SKIP, mobile_number_country = SKIP,
                   address_line1 = SKIP, address_line2 = SKIP,
                   address_line3 = SKIP, city = SKIP, region = SKIP,
                   country = SKIP, postal_code = SKIP, gender = SKIP,
                   user_type = SKIP, language = SKIP, country_of_birth = SKIP,
                   country_of_nationality = SKIP, business_contact_role = SKIP,
                   government_id_type = SKIP, government_id = SKIP,
                   occupation_title = SKIP, occupation_type = SKIP,
                   mailing_address_line1 = SKIP, mailing_address_line2 = SKIP,
                   mailing_address_line3 = SKIP, mailing_country = SKIP,
                   mailing_city = SKIP, mailing_region = SKIP,
                   mailing_postal_code = SKIP, business_address_line1 = SKIP,
                   business_address_line2 = SKIP, business_address_line3 = SKIP,
                   business_country = SKIP, business_city = SKIP,
                   business_region = SKIP, business_postal_code = SKIP,
                   premise_number = SKIP, program_token = SKIP,
                   primary_user_token = SKIP, additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @currency = currency unless currency == SKIP
      @program_user_id = program_user_id unless program_user_id == SKIP
      @email = email unless email == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @date_of_birth = date_of_birth unless date_of_birth == SKIP
      @tax_resident_status = tax_resident_status unless tax_resident_status == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @mobile_number = mobile_number unless mobile_number == SKIP
      @phone_number_country = phone_number_country unless phone_number_country == SKIP
      @mobile_number_country = mobile_number_country unless mobile_number_country == SKIP
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @address_line3 = address_line3 unless address_line3 == SKIP
      @city = city unless city == SKIP
      @region = region unless region == SKIP
      @country = country unless country == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @gender = gender unless gender == SKIP
      @user_type = user_type unless user_type == SKIP
      @language = language unless language == SKIP
      @country_of_birth = country_of_birth unless country_of_birth == SKIP
      @country_of_nationality = country_of_nationality unless country_of_nationality == SKIP
      @business_contact_role = business_contact_role unless business_contact_role == SKIP
      @government_id_type = government_id_type unless government_id_type == SKIP
      @government_id = government_id unless government_id == SKIP
      @occupation_title = occupation_title unless occupation_title == SKIP
      @occupation_type = occupation_type unless occupation_type == SKIP
      @mailing_address_line1 = mailing_address_line1 unless mailing_address_line1 == SKIP
      @mailing_address_line2 = mailing_address_line2 unless mailing_address_line2 == SKIP
      @mailing_address_line3 = mailing_address_line3 unless mailing_address_line3 == SKIP
      @mailing_country = mailing_country unless mailing_country == SKIP
      @mailing_city = mailing_city unless mailing_city == SKIP
      @mailing_region = mailing_region unless mailing_region == SKIP
      @mailing_postal_code = mailing_postal_code unless mailing_postal_code == SKIP
      @business_address_line1 = business_address_line1 unless business_address_line1 == SKIP
      @business_address_line2 = business_address_line2 unless business_address_line2 == SKIP
      @business_address_line3 = business_address_line3 unless business_address_line3 == SKIP
      @business_country = business_country unless business_country == SKIP
      @business_city = business_city unless business_city == SKIP
      @business_region = business_region unless business_region == SKIP
      @business_postal_code = business_postal_code unless business_postal_code == SKIP
      @premise_number = premise_number unless premise_number == SKIP
      @program_token = program_token unless program_token == SKIP
      @primary_user_token = primary_user_token unless primary_user_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash['currency'] ||= Currencies::USD
      program_user_id =
        hash.key?('programUserId') ? hash['programUserId'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      first_name = hash.key?('firstName') ? hash['firstName'] : SKIP
      last_name = hash.key?('lastName') ? hash['lastName'] : SKIP
      date_of_birth = if hash.key?('dateOfBirth')
                        (DateTimeHelper.from_rfc3339(hash['dateOfBirth']) if hash['dateOfBirth'])
                      else
                        SKIP
                      end
      tax_resident_status =
        hash.key?('taxResidentStatus') ? hash['taxResidentStatus'] : SKIP
      phone_number = hash.key?('phoneNumber') ? hash['phoneNumber'] : SKIP
      mobile_number = hash.key?('mobileNumber') ? hash['mobileNumber'] : SKIP
      phone_number_country =
        hash.key?('phoneNumberCountry') ? hash['phoneNumberCountry'] : SKIP
      mobile_number_country =
        hash.key?('mobileNumberCountry') ? hash['mobileNumberCountry'] : SKIP
      address_line1 = hash.key?('addressLine1') ? hash['addressLine1'] : SKIP
      address_line2 = hash.key?('addressLine2') ? hash['addressLine2'] : SKIP
      address_line3 = hash.key?('addressLine3') ? hash['addressLine3'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      region = hash.key?('region') ? hash['region'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      postal_code = hash.key?('postalCode') ? hash['postalCode'] : SKIP
      gender = hash.key?('gender') ? hash['gender'] : SKIP
      user_type = hash.key?('userType') ? hash['userType'] : SKIP
      language = hash.key?('language') ? hash['language'] : SKIP
      country_of_birth =
        hash.key?('countryOfBirth') ? hash['countryOfBirth'] : SKIP
      country_of_nationality =
        hash.key?('countryOfNationality') ? hash['countryOfNationality'] : SKIP
      business_contact_role =
        hash.key?('businessContactRole') ? hash['businessContactRole'] : SKIP
      government_id_type =
        hash.key?('governmentIdType') ? hash['governmentIdType'] : SKIP
      government_id = hash.key?('governmentId') ? hash['governmentId'] : SKIP
      occupation_title =
        hash.key?('occupationTitle') ? hash['occupationTitle'] : SKIP
      occupation_type =
        hash.key?('occupationType') ? hash['occupationType'] : SKIP
      mailing_address_line1 =
        hash.key?('mailingAddressLine1') ? hash['mailingAddressLine1'] : SKIP
      mailing_address_line2 =
        hash.key?('mailingAddressLine2') ? hash['mailingAddressLine2'] : SKIP
      mailing_address_line3 =
        hash.key?('mailingAddressLine3') ? hash['mailingAddressLine3'] : SKIP
      mailing_country =
        hash.key?('mailingCountry') ? hash['mailingCountry'] : SKIP
      mailing_city = hash.key?('mailingCity') ? hash['mailingCity'] : SKIP
      mailing_region = hash.key?('mailingRegion') ? hash['mailingRegion'] : SKIP
      mailing_postal_code =
        hash.key?('mailingPostalCode') ? hash['mailingPostalCode'] : SKIP
      business_address_line1 =
        hash.key?('businessAddressLine1') ? hash['businessAddressLine1'] : SKIP
      business_address_line2 =
        hash.key?('businessAddressLine2') ? hash['businessAddressLine2'] : SKIP
      business_address_line3 =
        hash.key?('businessAddressLine3') ? hash['businessAddressLine3'] : SKIP
      business_country =
        hash.key?('businessCountry') ? hash['businessCountry'] : SKIP
      business_city = hash.key?('businessCity') ? hash['businessCity'] : SKIP
      business_region =
        hash.key?('businessRegion') ? hash['businessRegion'] : SKIP
      business_postal_code =
        hash.key?('businessPostalCode') ? hash['businessPostalCode'] : SKIP
      premise_number = hash.key?('premiseNumber') ? hash['premiseNumber'] : SKIP
      program_token = hash.key?('programToken') ? hash['programToken'] : SKIP
      primary_user_token =
        hash.key?('primaryUserToken') ? hash['primaryUserToken'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateUser.new(currency,
                             program_user_id,
                             email,
                             first_name,
                             last_name,
                             date_of_birth,
                             tax_resident_status,
                             phone_number,
                             mobile_number,
                             phone_number_country,
                             mobile_number_country,
                             address_line1,
                             address_line2,
                             address_line3,
                             city,
                             region,
                             country,
                             postal_code,
                             gender,
                             user_type,
                             language,
                             country_of_birth,
                             country_of_nationality,
                             business_contact_role,
                             government_id_type,
                             government_id,
                             occupation_title,
                             occupation_type,
                             mailing_address_line1,
                             mailing_address_line2,
                             mailing_address_line3,
                             mailing_country,
                             mailing_city,
                             mailing_region,
                             mailing_postal_code,
                             business_address_line1,
                             business_address_line2,
                             business_address_line3,
                             business_country,
                             business_city,
                             business_region,
                             business_postal_code,
                             premise_number,
                             program_token,
                             primary_user_token,
                             additional_properties)
    end

    def to_custom_date_of_birth
      DateTimeHelper.to_rfc3339(date_of_birth)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} currency: #{@currency}, program_user_id: #{@program_user_id}, email:"\
      " #{@email}, first_name: #{@first_name}, last_name: #{@last_name}, date_of_birth:"\
      " #{@date_of_birth}, tax_resident_status: #{@tax_resident_status}, phone_number:"\
      " #{@phone_number}, mobile_number: #{@mobile_number}, phone_number_country:"\
      " #{@phone_number_country}, mobile_number_country: #{@mobile_number_country}, address_line1:"\
      " #{@address_line1}, address_line2: #{@address_line2}, address_line3: #{@address_line3},"\
      " city: #{@city}, region: #{@region}, country: #{@country}, postal_code: #{@postal_code},"\
      " gender: #{@gender}, user_type: #{@user_type}, language: #{@language}, country_of_birth:"\
      " #{@country_of_birth}, country_of_nationality: #{@country_of_nationality},"\
      " business_contact_role: #{@business_contact_role}, government_id_type:"\
      " #{@government_id_type}, government_id: #{@government_id}, occupation_title:"\
      " #{@occupation_title}, occupation_type: #{@occupation_type}, mailing_address_line1:"\
      " #{@mailing_address_line1}, mailing_address_line2: #{@mailing_address_line2},"\
      " mailing_address_line3: #{@mailing_address_line3}, mailing_country: #{@mailing_country},"\
      " mailing_city: #{@mailing_city}, mailing_region: #{@mailing_region}, mailing_postal_code:"\
      " #{@mailing_postal_code}, business_address_line1: #{@business_address_line1},"\
      " business_address_line2: #{@business_address_line2}, business_address_line3:"\
      " #{@business_address_line3}, business_country: #{@business_country}, business_city:"\
      " #{@business_city}, business_region: #{@business_region}, business_postal_code:"\
      " #{@business_postal_code}, premise_number: #{@premise_number}, program_token:"\
      " #{@program_token}, primary_user_token: #{@primary_user_token}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} currency: #{@currency.inspect}, program_user_id:"\
      " #{@program_user_id.inspect}, email: #{@email.inspect}, first_name: #{@first_name.inspect},"\
      " last_name: #{@last_name.inspect}, date_of_birth: #{@date_of_birth.inspect},"\
      " tax_resident_status: #{@tax_resident_status.inspect}, phone_number:"\
      " #{@phone_number.inspect}, mobile_number: #{@mobile_number.inspect}, phone_number_country:"\
      " #{@phone_number_country.inspect}, mobile_number_country:"\
      " #{@mobile_number_country.inspect}, address_line1: #{@address_line1.inspect},"\
      " address_line2: #{@address_line2.inspect}, address_line3: #{@address_line3.inspect}, city:"\
      " #{@city.inspect}, region: #{@region.inspect}, country: #{@country.inspect}, postal_code:"\
      " #{@postal_code.inspect}, gender: #{@gender.inspect}, user_type: #{@user_type.inspect},"\
      " language: #{@language.inspect}, country_of_birth: #{@country_of_birth.inspect},"\
      " country_of_nationality: #{@country_of_nationality.inspect}, business_contact_role:"\
      " #{@business_contact_role.inspect}, government_id_type: #{@government_id_type.inspect},"\
      " government_id: #{@government_id.inspect}, occupation_title: #{@occupation_title.inspect},"\
      " occupation_type: #{@occupation_type.inspect}, mailing_address_line1:"\
      " #{@mailing_address_line1.inspect}, mailing_address_line2:"\
      " #{@mailing_address_line2.inspect}, mailing_address_line3:"\
      " #{@mailing_address_line3.inspect}, mailing_country: #{@mailing_country.inspect},"\
      " mailing_city: #{@mailing_city.inspect}, mailing_region: #{@mailing_region.inspect},"\
      " mailing_postal_code: #{@mailing_postal_code.inspect}, business_address_line1:"\
      " #{@business_address_line1.inspect}, business_address_line2:"\
      " #{@business_address_line2.inspect}, business_address_line3:"\
      " #{@business_address_line3.inspect}, business_country: #{@business_country.inspect},"\
      " business_city: #{@business_city.inspect}, business_region: #{@business_region.inspect},"\
      " business_postal_code: #{@business_postal_code.inspect}, premise_number:"\
      " #{@premise_number.inspect}, program_token: #{@program_token.inspect}, primary_user_token:"\
      " #{@primary_user_token.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
