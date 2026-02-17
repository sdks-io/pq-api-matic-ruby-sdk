# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class UsersControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.users
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [users](page:resources/user) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_users
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_users(page, page_size, filter: filter, sort: sort,
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
      '{"payload":[{"token":"user-19c60cc6-71c3-4db0-9092-4d422410c87e","addre'\
      'ssLine1":"400 Linden Oaks","addressLine2":"Rochester, NY 14625-2818","c'\
      'ity":"Rochester","country":"US","countryOfBirth":"US","countryOfNationa'\
      'lity":"US","createdOn":"2021-06-07T21:23:41Z","dateOfBirth":"1991-04-13'\
      'T00:00:00Z","email":"PQTESTEMAIL+Caden_Aufderhar@GMAIL.COM","firstName"'\
      ':"Susie","gender":"MALE","language":"en-US","lastName":"Fadel","mobileN'\
      'umber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNumber":"+1 5'\
      '85-987-6543","phoneNumberCountry":"US","postalCode":"14625","premiseNum'\
      'ber":"400","programUserId":"Haley_Ryan","region":"NY","status":"ACTIVE"'\
      ',"userType":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquick'\
      'er.io/api/v2/users/user-19c60cc6-71c3-4db0-9092-4d422410c87e","params":'\
      '{"rel":"self"}}]},{"token":"user-2d926d31-a609-40e1-b28a-a32e0aeb6a79",'\
      '"addressLine1":"400 Linden Oaks","addressLine2":"Rochester, NY 14625-28'\
      '18","city":"Rochester","country":"US","countryOfBirth":"US","countryOfN'\
      'ationality":"US","createdOn":"2021-06-08T16:04:54Z","dateOfBirth":"1991'\
      '-04-13T00:00:00Z","email":"PQTESTEMAIL+Milton_Cronin9@GMAIL.COM","first'\
      'Name":"Alycia","gender":"MALE","language":"en-US","lastName":"McLaughli'\
      'n","mobileNumber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNu'\
      'mber":"+1 585-987-6543","phoneNumberCountry":"US","postalCode":"14625",'\
      '"premiseNumber":"400","programUserId":"Elliot.Sawayn","region":"NY","st'\
      'atus":"ACTIVE","userType":"INDIVIDUAL","links":[{"href":"https://api.sa'\
      'ndbox.payquicker.io/api/v2/users/user-2d926d31-a609-40e1-b28a-a32e0aeb6'\
      'a79","params":{"rel":"self"}}]},{"token":"user-80df50a2-3cc8-462d-87c8-'\
      'cf3e266994c8","addressLine1":"400 Linden Oaks","addressLine2":"Rocheste'\
      'r, NY 14625-2818","city":"Rochester","country":"US","countryOfBirth":"U'\
      'S","countryOfNationality":"US","createdOn":"2021-06-08T16:13:53Z","date'\
      'OfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Meta50@GMAIL.COM",'\
      '"firstName":"Trisha","gender":"MALE","governmentId":"000000000","langua'\
      'ge":"en-US","lastName":"Leffler","mobileNumber":"+1 585-987-6543","mobi'\
      'leNumberCountry":"US","phoneNumber":"+1 585-987-6543","phoneNumberCount'\
      'ry":"US","postalCode":"14625","premiseNumber":"400","programUserId":"No'\
      'na49","region":"NY","status":"ACTIVE","userType":"INDIVIDUAL","links":['\
      '{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-80df50a2-3'\
      'cc8-462d-87c8-cf3e266994c8","params":{"rel":"self"}}]},{"token":"user-b'\
      '26db8d1-ebb1-4367-aad4-3ffb6f0f17cf","addressLine1":"400 Linden Oaks","'\
      'addressLine2":"Rochester, NY 14625-2818","city":"Rochester","country":"'\
      'US","countryOfBirth":"US","countryOfNationality":"US","createdOn":"2021'\
      '-06-08T16:21:54Z","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTE'\
      'MAIL+Frankie_Stoltenberg@GMAIL.COM","firstName":"Kevon","gender":"MALE"'\
      ',"governmentId":"000000000","language":"en-US","lastName":"Waelchi","mo'\
      'bileNumber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNumber":'\
      '"+1 585-987-6543","phoneNumberCountry":"US","postalCode":"14625","premi'\
      'seNumber":"400","programUserId":"Lydia_Jacobi13","region":"NY","status"'\
      ':"ACTIVE","userType":"INDIVIDUAL","links":[{"href":"https://api.sandbox'\
      '.payquicker.io/api/v2/users/user-b26db8d1-ebb1-4367-aad4-3ffb6f0f17cf",'\
      '"params":{"rel":"self"}}]},{"token":"user-61b12c1f-7cff-42e3-9c56-09ba2'\
      'b08d2ed","addressLine1":"4179 BUFFALO ROAD","businessAddressLine1":"400'\
      ' Linden Oaks","businessAddressType":"BUSINESS","businessCity":"Rocheste'\
      'r","businessCountry":"US","businessName":"Api V2 Company LLC","business'\
      'OperatingName":"Api V2 Company LLC","businessPostalCode":"14625","busin'\
      'essRegion":"NY","businessRegistrationCountry":"US","businessRegistratio'\
      'nRegion":"NY","city":"NORTH CHILI","country":"US","countryOfBirth":"US"'\
      ',"countryOfNationality":"US","createdOn":"2021-06-08T16:36:05Z","dateOf'\
      'Birth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Helena.Skiles24@GMAI'\
      'L.COM","firstName":"Westley","gender":"MALE","governmentId":"000000000"'\
      ',"language":"en-US","lastName":"Westley","mobileNumber":"+1 585-987-654'\
      '3","mobileNumberCountry":"US","phoneNumber":"+1 585-987-6543","phoneNum'\
      'berCountry":"US","postalCode":"14514","premiseNumber":"400","programUse'\
      'rId":"Nicholas94","region":"NY","status":"ACTIVE","userType":"BUSINESS"'\
      ',"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-'\
      '61b12c1f-7cff-42e3-9c56-09ba2b08d2ed","params":{"rel":"self"}}]}],"meta'\
      '":{"pageNo":"1","pageSize":"5","pageCount":"124","recordCount":"618","t'\
      'imezone":"GMT","requestRef":"request-reference-value"},"links":[{"href"'\
      ':"https://api.sandbox.payquicker.io/api/v2/users?pageSize=5&page=1","pa'\
      'rams":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of [users](page:resources/user) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_users1
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_users(page, page_size, filter: filter, sort: sort,
                                    language: language)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"token":"user-19c60cc6-71c3-4db0-9092-4d422410c87e","addre'\
      'ssLine1":"400 Linden Oaks","addressLine2":"Rochester, NY 14625-2818","c'\
      'ity":"Rochester","country":"US","countryOfBirth":"US","countryOfNationa'\
      'lity":"US","createdOn":"2021-06-07T21:23:41Z","dateOfBirth":"1991-04-13'\
      'T00:00:00Z","email":"PQTESTEMAIL+Caden_Aufderhar@GMAIL.COM","firstName"'\
      ':"Susie","gender":"MALE","language":"en-US","lastName":"Fadel","mobileN'\
      'umber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNumber":"+1 5'\
      '85-987-6543","phoneNumberCountry":"US","postalCode":"14625","premiseNum'\
      'ber":"400","programUserId":"Haley_Ryan","region":"NY","status":"ACTIVE"'\
      ',"userType":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquick'\
      'er.io/api/v2/users/user-19c60cc6-71c3-4db0-9092-4d422410c87e","params":'\
      '{"rel":"self"}}]},{"token":"user-2d926d31-a609-40e1-b28a-a32e0aeb6a79",'\
      '"addressLine1":"400 Linden Oaks","addressLine2":"Rochester, NY 14625-28'\
      '18","city":"Rochester","country":"US","countryOfBirth":"US","countryOfN'\
      'ationality":"US","createdOn":"2021-06-08T16:04:54Z","dateOfBirth":"1991'\
      '-04-13T00:00:00Z","email":"PQTESTEMAIL+Milton_Cronin9@GMAIL.COM","first'\
      'Name":"Alycia","gender":"MALE","language":"en-US","lastName":"McLaughli'\
      'n","mobileNumber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNu'\
      'mber":"+1 585-987-6543","phoneNumberCountry":"US","postalCode":"14625",'\
      '"premiseNumber":"400","programUserId":"Elliot.Sawayn","region":"NY","st'\
      'atus":"ACTIVE","userType":"INDIVIDUAL","links":[{"href":"https://api.sa'\
      'ndbox.payquicker.io/api/v2/users/user-2d926d31-a609-40e1-b28a-a32e0aeb6'\
      'a79","params":{"rel":"self"}}]},{"token":"user-80df50a2-3cc8-462d-87c8-'\
      'cf3e266994c8","addressLine1":"400 Linden Oaks","addressLine2":"Rocheste'\
      'r, NY 14625-2818","city":"Rochester","country":"US","countryOfBirth":"U'\
      'S","countryOfNationality":"US","createdOn":"2021-06-08T16:13:53Z","date'\
      'OfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Meta50@GMAIL.COM",'\
      '"firstName":"Trisha","gender":"MALE","governmentId":"000000000","langua'\
      'ge":"en-US","lastName":"Leffler","mobileNumber":"+1 585-987-6543","mobi'\
      'leNumberCountry":"US","phoneNumber":"+1 585-987-6543","phoneNumberCount'\
      'ry":"US","postalCode":"14625","premiseNumber":"400","programUserId":"No'\
      'na49","region":"NY","status":"ACTIVE","userType":"INDIVIDUAL","links":['\
      '{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-80df50a2-3'\
      'cc8-462d-87c8-cf3e266994c8","params":{"rel":"self"}}]},{"token":"user-b'\
      '26db8d1-ebb1-4367-aad4-3ffb6f0f17cf","addressLine1":"400 Linden Oaks","'\
      'addressLine2":"Rochester, NY 14625-2818","city":"Rochester","country":"'\
      'US","countryOfBirth":"US","countryOfNationality":"US","createdOn":"2021'\
      '-06-08T16:21:54Z","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTE'\
      'MAIL+Frankie_Stoltenberg@GMAIL.COM","firstName":"Kevon","gender":"MALE"'\
      ',"governmentId":"000000000","language":"en-US","lastName":"Waelchi","mo'\
      'bileNumber":"+1 585-987-6543","mobileNumberCountry":"US","phoneNumber":'\
      '"+1 585-987-6543","phoneNumberCountry":"US","postalCode":"14625","premi'\
      'seNumber":"400","programUserId":"Lydia_Jacobi13","region":"NY","status"'\
      ':"ACTIVE","userType":"INDIVIDUAL","links":[{"href":"https://api.sandbox'\
      '.payquicker.io/api/v2/users/user-b26db8d1-ebb1-4367-aad4-3ffb6f0f17cf",'\
      '"params":{"rel":"self"}}]},{"token":"user-61b12c1f-7cff-42e3-9c56-09ba2'\
      'b08d2ed","addressLine1":"4179 BUFFALO ROAD","businessAddressLine1":"400'\
      ' Linden Oaks","businessAddressType":"BUSINESS","businessCity":"Rocheste'\
      'r","businessCountry":"US","businessName":"Api V2 Company LLC","business'\
      'OperatingName":"Api V2 Company LLC","businessPostalCode":"14625","busin'\
      'essRegion":"NY","businessRegistrationCountry":"US","businessRegistratio'\
      'nRegion":"NY","city":"NORTH CHILI","country":"US","countryOfBirth":"US"'\
      ',"countryOfNationality":"US","createdOn":"2021-06-08T16:36:05Z","dateOf'\
      'Birth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Helena.Skiles24@GMAI'\
      'L.COM","firstName":"Westley","gender":"MALE","governmentId":"000000000"'\
      ',"language":"en-US","lastName":"Westley","mobileNumber":"+1 585-987-654'\
      '3","mobileNumberCountry":"US","phoneNumber":"+1 585-987-6543","phoneNum'\
      'berCountry":"US","postalCode":"14514","premiseNumber":"400","programUse'\
      'rId":"Nicholas94","region":"NY","status":"ACTIVE","userType":"BUSINESS"'\
      ',"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/users/user-'\
      '61b12c1f-7cff-42e3-9c56-09ba2b08d2ed","params":{"rel":"self"}}]}],"meta'\
      '":{"pageNo":"1","pageSize":"5","pageCount":"124","recordCount":"618","t'\
      'imezone":"GMT","requestRef":"request-reference-value"},"links":[{"href"'\
      ':"https://api.sandbox.payquicker.io/api/v2/users?pageSize=5&page=1","pa'\
      'rams":{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [user](page:resources/user).
  #
  def test_create_user
    # Parameters for the API call
    body = CreateOrUpdateUser.from_hash(APIHelper.json_deserialize(
      '{"CURRENCY":"USD","PROGRAMUSERID":"Jarrell_Sauer","EMAIL":"PQTESTEMAIL+'\
      'Viviane.Legros20@GMAIL.COM","FIRSTNAME":"Amari","LASTNAME":"Rippin","DA'\
      'TEOFBIRTH":"1991-04-13","BUSINESSCONTACTROLE":"SW ENGINEER","GOVERNMENT'\
      'IDTYPE":"SSN","GOVERNMENTID":"000000000","OCCUPATIONTITLE":"TESTER","OC'\
      'CUPATIONTYPE":"GOVERNMENT","TAXRESIDENTSTATUS":"PREFER_NOT_TO_ANSWER","'\
      'PHONENUMBER":"+15859876543","MOBILENUMBER":"+15859876543","PHONENUMBERC'\
      'OUNTRY":"US","MOBILENUMBERCOUNTRY":"US","ADDRESSLINE1":"400 Linden Oaks'\
      '","ADDRESSLINE2":"","MAILINGADDRESSLINE1":"123 Emory Lane","MAILINGCOUN'\
      'TRY":"US","MAILINGCITY":"Rochester","MAILINGREGION":"NY","MAILINGPOSTAL'\
      'CODE":14625,"BUSINESSADDRESSLINE1":"99 Office Park","BUSINESSADDRESSLIN'\
      'E2":"Suite 293","BUSINESSCOUNTRY":"US","BUSINESSCITY":"Modesto","BUSINE'\
      'SSREGION":"CA","BUSINESSPOSTALCODE":99785,"CITY":"Rochester","REGION":"'\
      'NY","COUNTRY":"US","POSTALCODE":"14625","PREMISENUMBER":"","ADDRESSTYPE'\
      '":"RESIDENTIAL","EMPLOYERID":"1","GENDER":"MALE","USERTYPE":"INDIVIDUAL'\
      '","LANGUAGE":"EN-US","COUNTRYOFBIRTH":"US","COUNTRYOFNATIONALITY":"US",'\
      '"PROGRAMTOKEN":"prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb","PrimaryUser'\
      'Token":"user-35372005-a9a3-41ae-ba46-a39cf944726d"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_user(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"user-91acd009-36d5-40d9-b8b1-39a3704b577e","addressLine1":"41'\
      '79 BUFFALO ROAD","businessAddressLine1":"99 Office Park","businessAddre'\
      'ssLine2":"Suite 293","businessAddressType":"BUSINESS","businessCity":"M'\
      'odesto","businessContactRole":"OTHER","businessCountry":"US","businessN'\
      'ame":"Api V2 Company LLC","businessPostalCode":"99700","businessRegion"'\
      ':"CA","city":"NORTH CHILI","country":"US","countryOfBirth":"US","countr'\
      'yOfNationality":"US","createdOn":"2022-04-08T19:44:16Z","currency":"USD'\
      '","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Emanuel_Car'\
      'roll@GMAIL.COM","employerId":"1","firstName":"Timothy","gender":"MALE",'\
      '"governmentId":"111111111","governmentIdType":"SSN","language":"en-US",'\
      '"lastName":"Mueller","mailingAddressLine1":"128 Maple Lane","mailingCit'\
      'y":"Rochester","mailingCountry":"US","mailingPostalCode":"14625","maili'\
      'ngRegion":"NY","mobileNumber":"+15859876543","mobileNumberCountry":"US"'\
      ',"occupationTitle":"TESTER","occupationType":"GOVERNMENT","phoneNumber"'\
      ':"+15859876543","phoneNumberCountry":"US","postalCode":"14514","program'\
      'UserId":"Kaylee.Howe8","region":"NY","taxResidentStatus":"YES","userTyp'\
      'e":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-91acd009-36d5-40d9-b8b1-39a3704b577e","params":{"rel":"s'\
      'elf"}}],"meta":{"timezone":"GMT","requestRef":"request-reference-value"'\
      '}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [user](page:resources/user).
  #
  def test_create_user1
    # Parameters for the API call
    body = CreateOrUpdateUser.from_hash(APIHelper.json_deserialize(
      '{"CURRENCY":"USD","PROGRAMUSERID":"Jarrell_Sauer","EMAIL":"PQTESTEMAIL+'\
      'Viviane.Legros20@GMAIL.COM","FIRSTNAME":"Amari","LASTNAME":"Rippin","DA'\
      'TEOFBIRTH":"1991-04-13","BUSINESSCONTACTROLE":"SW ENGINEER","GOVERNMENT'\
      'IDTYPE":"SSN","GOVERNMENTID":"000000000","OCCUPATIONTITLE":"TESTER","OC'\
      'CUPATIONTYPE":"GOVERNMENT","TAXRESIDENTSTATUS":"PREFER_NOT_TO_ANSWER","'\
      'PHONENUMBER":"+15859876543","MOBILENUMBER":"+15859876543","PHONENUMBERC'\
      'OUNTRY":"US","MOBILENUMBERCOUNTRY":"US","ADDRESSLINE1":"400 Linden Oaks'\
      '","ADDRESSLINE2":"","MAILINGADDRESSLINE1":"123 Emory Lane","MAILINGCOUN'\
      'TRY":"US","MAILINGCITY":"Rochester","MAILINGREGION":"NY","MAILINGPOSTAL'\
      'CODE":14625,"BUSINESSADDRESSLINE1":"99 Office Park","BUSINESSADDRESSLIN'\
      'E2":"Suite 293","BUSINESSCOUNTRY":"US","BUSINESSCITY":"Modesto","BUSINE'\
      'SSREGION":"CA","BUSINESSPOSTALCODE":99785,"CITY":"Rochester","REGION":"'\
      'NY","COUNTRY":"US","POSTALCODE":"14625","PREMISENUMBER":"","ADDRESSTYPE'\
      '":"RESIDENTIAL","EMPLOYERID":"1","GENDER":"MALE","USERTYPE":"INDIVIDUAL'\
      '","LANGUAGE":"EN-US","COUNTRYOFBIRTH":"US","COUNTRYOFNATIONALITY":"US",'\
      '"PROGRAMTOKEN":"prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb","PrimaryUser'\
      'Token":"user-35372005-a9a3-41ae-ba46-a39cf944726d"}', false))

    # Perform the API call through the SDK function
    result = @controller.create_user(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"user-91acd009-36d5-40d9-b8b1-39a3704b577e","addressLine1":"41'\
      '79 BUFFALO ROAD","businessAddressLine1":"99 Office Park","businessAddre'\
      'ssLine2":"Suite 293","businessAddressType":"BUSINESS","businessCity":"M'\
      'odesto","businessContactRole":"OTHER","businessCountry":"US","businessN'\
      'ame":"Api V2 Company LLC","businessPostalCode":"99700","businessRegion"'\
      ':"CA","city":"NORTH CHILI","country":"US","countryOfBirth":"US","countr'\
      'yOfNationality":"US","createdOn":"2022-04-08T19:44:16Z","currency":"USD'\
      '","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Emanuel_Car'\
      'roll@GMAIL.COM","employerId":"1","firstName":"Timothy","gender":"MALE",'\
      '"governmentId":"111111111","governmentIdType":"SSN","language":"en-US",'\
      '"lastName":"Mueller","mailingAddressLine1":"128 Maple Lane","mailingCit'\
      'y":"Rochester","mailingCountry":"US","mailingPostalCode":"14625","maili'\
      'ngRegion":"NY","mobileNumber":"+15859876543","mobileNumberCountry":"US"'\
      ',"occupationTitle":"TESTER","occupationType":"GOVERNMENT","phoneNumber"'\
      ':"+15859876543","phoneNumberCountry":"US","postalCode":"14514","program'\
      'UserId":"Kaylee.Howe8","region":"NY","taxResidentStatus":"YES","userTyp'\
      'e":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-91acd009-36d5-40d9-b8b1-39a3704b577e","params":{"rel":"s'\
      'elf"}}],"meta":{"timezone":"GMT","requestRef":"request-reference-value"'\
      '}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Update a [user](page:resources/user) object (change [email](#/rest/models/structures/email-address)], [address](#/rest/models/structures/address) change, etc.) using a user token.'
  #
  def test_update_user
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    body = CreateOrUpdateUser.from_hash(APIHelper.json_deserialize(
      '{"CURRENCY":"USD","PROGRAMUSERID":"Jarrell_Sauer","EMAIL":"PQTESTEMAIL+'\
      'Viviane.Legros20@GMAIL.COM","FIRSTNAME":"Amari","LASTNAME":"Rippin","DA'\
      'TEOFBIRTH":"1991-04-13","BUSINESSCONTACTROLE":"SW ENGINEER","GOVERNMENT'\
      'IDTYPE":"SSN","GOVERNMENTID":"000000000","OCCUPATIONTITLE":"TESTER","OC'\
      'CUPATIONTYPE":"GOVERNMENT","TAXRESIDENTSTATUS":"PREFER_NOT_TO_ANSWER","'\
      'PHONENUMBER":"+15859876543","MOBILENUMBER":"+15859876543","PHONENUMBERC'\
      'OUNTRY":"US","MOBILENUMBERCOUNTRY":"US","ADDRESSLINE1":"400 Linden Oaks'\
      '","ADDRESSLINE2":"","MAILINGADDRESSLINE1":"123 Emory Lane","MAILINGCOUN'\
      'TRY":"US","MAILINGCITY":"Rochester","MAILINGREGION":"NY","MAILINGPOSTAL'\
      'CODE":14625,"BUSINESSADDRESSLINE1":"99 Office Park","BUSINESSADDRESSLIN'\
      'E2":"Suite 293","BUSINESSCOUNTRY":"US","BUSINESSCITY":"Modesto","BUSINE'\
      'SSREGION":"CA","BUSINESSPOSTALCODE":99785,"CITY":"Rochester","REGION":"'\
      'NY","COUNTRY":"US","POSTALCODE":"14625","PREMISENUMBER":"","ADDRESSTYPE'\
      '":"RESIDENTIAL","EMPLOYERID":"1","GENDER":"MALE","USERTYPE":"INDIVIDUAL'\
      '","LANGUAGE":"EN-US","COUNTRYOFBIRTH":"US","COUNTRYOFNATIONALITY":"US",'\
      '"PROGRAMTOKEN":"prog-6a272eca-9487-d83a-c9e4-8df8c9a7f6eb","PrimaryUser'\
      'Token":"user-35372005-a9a3-41ae-ba46-a39cf944726d"}', false))

    # Perform the API call through the SDK function
    result = @controller.update_user(user_token, body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"user-91acd009-36d5-40d9-b8b1-39a3704b577e","addressLine1":"41'\
      '79 BUFFALO ROAD","businessAddressLine1":"99 Office Park","businessAddre'\
      'ssLine2":"Suite 293","businessAddressType":"BUSINESS","businessCity":"M'\
      'odesto","businessContactRole":"OTHER","businessCountry":"US","businessN'\
      'ame":"Api V2 Company LLC","businessPostalCode":"99700","businessRegion"'\
      ':"CA","city":"NORTH CHILI","country":"US","countryOfBirth":"US","countr'\
      'yOfNationality":"US","createdOn":"2022-04-08T19:44:16Z","currency":"USD'\
      '","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Emanuel_Car'\
      'roll@GMAIL.COM","employerId":"1","firstName":"Timothy","gender":"MALE",'\
      '"governmentId":"111111111","governmentIdType":"SSN","language":"en-US",'\
      '"lastName":"Mueller","mailingAddressLine1":"128 Maple Lane","mailingCit'\
      'y":"Rochester","mailingCountry":"US","mailingPostalCode":"14625","maili'\
      'ngRegion":"NY","mobileNumber":"+15859876543","mobileNumberCountry":"US"'\
      ',"occupationTitle":"TESTER","occupationType":"GOVERNMENT","phoneNumber"'\
      ':"+15859876543","phoneNumberCountry":"US","postalCode":"14514","program'\
      'UserId":"Kaylee.Howe8","region":"NY","taxResidentStatus":"YES","userTyp'\
      'e":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-91acd009-36d5-40d9-b8b1-39a3704b577e","params":{"rel":"s'\
      'elf"}}],"meta":{"timezone":"GMT","requestRef":"request-reference-value"'\
      '}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [user](page:resources/user) record by user token.
  #
  def test_retrieve_user
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.retrieve_user(user_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"user-91acd009-36d5-40d9-b8b1-39a3704b577e","addressLine1":"41'\
      '79 BUFFALO ROAD","businessAddressLine1":"99 Office Park","businessAddre'\
      'ssLine2":"Suite 293","businessAddressType":"BUSINESS","businessCity":"M'\
      'odesto","businessContactRole":"OTHER","businessCountry":"US","businessN'\
      'ame":"Api V2 Company LLC","businessPostalCode":"99700","businessRegion"'\
      ':"CA","city":"NORTH CHILI","country":"US","countryOfBirth":"US","countr'\
      'yOfNationality":"US","createdOn":"2022-04-08T19:44:16Z","currency":"USD'\
      '","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Emanuel_Car'\
      'roll@GMAIL.COM","employerId":"1","firstName":"Timothy","gender":"MALE",'\
      '"governmentId":"111111111","governmentIdType":"SSN","language":"en-US",'\
      '"lastName":"Mueller","mailingAddressLine1":"128 Maple Lane","mailingCit'\
      'y":"Rochester","mailingCountry":"US","mailingPostalCode":"14625","maili'\
      'ngRegion":"NY","mobileNumber":"+15859876543","mobileNumberCountry":"US"'\
      ',"occupationTitle":"TESTER","occupationType":"GOVERNMENT","phoneNumber"'\
      ':"+15859876543","phoneNumberCountry":"US","postalCode":"14514","program'\
      'UserId":"Kaylee.Howe8","region":"NY","taxResidentStatus":"YES","userTyp'\
      'e":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-91acd009-36d5-40d9-b8b1-39a3704b577e","params":{"rel":"s'\
      'elf"}}],"meta":{"timezone":"GMT","requestRef":"request-reference-value"'\
      '}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a single [user](page:resources/user) record by user token.
  #
  def test_retrieve_user1
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'

    # Perform the API call through the SDK function
    result = @controller.retrieve_user(user_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"user-91acd009-36d5-40d9-b8b1-39a3704b577e","addressLine1":"41'\
      '79 BUFFALO ROAD","businessAddressLine1":"99 Office Park","businessAddre'\
      'ssLine2":"Suite 293","businessAddressType":"BUSINESS","businessCity":"M'\
      'odesto","businessContactRole":"OTHER","businessCountry":"US","businessN'\
      'ame":"Api V2 Company LLC","businessPostalCode":"99700","businessRegion"'\
      ':"CA","city":"NORTH CHILI","country":"US","countryOfBirth":"US","countr'\
      'yOfNationality":"US","createdOn":"2022-04-08T19:44:16Z","currency":"USD'\
      '","dateOfBirth":"1991-04-13T00:00:00Z","email":"PQTESTEMAIL+Emanuel_Car'\
      'roll@GMAIL.COM","employerId":"1","firstName":"Timothy","gender":"MALE",'\
      '"governmentId":"111111111","governmentIdType":"SSN","language":"en-US",'\
      '"lastName":"Mueller","mailingAddressLine1":"128 Maple Lane","mailingCit'\
      'y":"Rochester","mailingCountry":"US","mailingPostalCode":"14625","maili'\
      'ngRegion":"NY","mobileNumber":"+15859876543","mobileNumberCountry":"US"'\
      ',"occupationTitle":"TESTER","occupationType":"GOVERNMENT","phoneNumber"'\
      ':"+15859876543","phoneNumberCountry":"US","postalCode":"14514","program'\
      'UserId":"Kaylee.Howe8","region":"NY","taxResidentStatus":"YES","userTyp'\
      'e":"INDIVIDUAL","links":[{"href":"https://api.sandbox.payquicker.io/api'\
      '/v2/users/user-91acd009-36d5-40d9-b8b1-39a3704b577e","params":{"rel":"s'\
      'elf"}}],"meta":{"timezone":"GMT","requestRef":"request-reference-value"'\
      '}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end