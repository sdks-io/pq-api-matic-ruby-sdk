# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class TransfersControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.transfers
    @response_catcher = @controller.http_call_back
  end

  # Retrieve a list of [transfers](page:resources/transfers) that supports filtering, sorting, and pagination through existing mechanisms.
  #
  def test_list_transfers
    # Parameters for the API call
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_transfers(page, page_size, filter: filter,
                                        sort: sort, language: language)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payload":[{"token":"xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8","clien'\
      'tTransferId":"1066ab05-84d0-453f-a827-1bd3b2ad9e3d","created":"2025-06-'\
      '23T19:17:22Z","destinationAmount":-14,"destinationCurrency":"USD","dest'\
      'inationToken":"dest-80611686-e311-4acd-aeeb-244609a3b12b","fee":{"categ'\
      'ory":"USER","destinationCountry":"USA","destinationCurrency":"USD","dis'\
      'tribution":[{"amount":1.5,"currency":"USD","description":[{"language":"'\
      'en-US","translation":"Transfer to a Bank Fee"},{"language":"en-US","tra'\
      'nslation":"Poplatek za převod do banky"},{"language":"de-DE","translati'\
      'on":"Transfer zu einer Bankgebühr"},{"language":"es-ES","translation":"'\
      'Coste de la transferencia a un banco"},{"language":"en-US","translation'\
      '":"Pankkiin siirto -maksu"},{"language":"fr-FR","translation":"Frais de'\
      ' virement vers une banque"},{"language":"it-IT","translation":"Tariffa '\
      'Trasferimento Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"'\
      '},{"language":"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL",'\
      '"translation":"Kosten bankoverschrijving"},{"language":"pl-PL","transla'\
      'tion":"Opłata za przelew do banku"},{"language":"pt-BR","translation":"'\
      'Taxa de Transferência para um Banco"},{"language":"ru-RU","translation"'\
      ':"Комиссия за перевод на банковский счет"},{"language":"en-US","transla'\
      'tion":"Avgift för överföring till en bank"},{"language":"zh-Hans","tran'\
      'slation":"转账到银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"'\
      'language":"fr-CA","translation":"Frais de transfert bancaire"},{"langua'\
      'ge":"pt-PT","translation":"Taxa de Transferência para um Banco"},{"lang'\
      'uage":"es-MX","translation":"Transferencia a una Tarifa Bancaria"},{"la'\
      'nguage":"en-GB","translation":"Transfer to a Bank Fee"}],"formattedAmou'\
      'nt":"$1.50 USD","percentage":1,"responsibility":"USER","responsibilityS'\
      'ource":"SCHEDULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e6'\
      '78e"}],"source":"TRANSACTION","totalAmount":-12.5,"transactionAmount":-'\
      '14,"type":"BANK_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRa'\
      'te":{"destinationAmount":-14,"destinationCurrency":"USD","rate":1,"sour'\
      'ceAmount":-14,"sourceCurrency":"USD","sourceFormattedAmount":"($14.00) '\
      'USD","destinationFormattedAmount":"($14.00) USD"},"memo":"Bank transfer'\
      ' - memo","note":"Bank transfer - note","sourceToken":"user-65ec33d0-451'\
      '8-41bb-8822-ed58c69e678e","status":"ACCEPTED","receiptToken":"rcpt-337b'\
      '4c59-821d-4bac-a1dd-c9d7c15e41e8","destinationFormattedAmount":"($14.00'\
      ') USD","amount":-14,"formattedAmount":"($14.00) USD","transferLockSide"'\
      ':"SOURCE","transferMethodType":"IACH","deliveryDetails":{"minimumDelive'\
      'ryMinutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-'\
      'ed58c69e678e/transfers/xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8","para'\
      'ms":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"2","pageCount":'\
      '"1","recordCount":"1","timezone":"GMT","requestRef":"request-reference-'\
      'value"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers?page=1&language=e'\
      'n-US&filter=%27transfertype%27=%27BANK_TRANSFER%27&pageSize=2","params"'\
      ':{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [transfer](page:resources/transfers) quote.
  #
  def test_create_transfer_quote
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_transfer_quote(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Create a new [transfer](page:resources/transfers) quote.
  #
  def test_create_transfer_quote1
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = @controller.create_transfer_quote(body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve details of a specific [transfer](page:resources/transfers) represented by a transfer token.
  #
  def test_retrieve_transfer
    # Parameters for the API call
    transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

    # Perform the API call through the SDK function
    result = @controller.retrieve_transfer(transfer_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept a [transfer](page:resources/transfers) quote.
  def test_accept_transfer_quote
    # Parameters for the API call
    transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

    # Perform the API call through the SDK function
    result = @controller.accept_transfer_quote(transfer_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Accept a [transfer](page:resources/transfers) quote.
  def test_accept_transfer_quote1
    # Parameters for the API call
    transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

    # Perform the API call through the SDK function
    result = @controller.accept_transfer_quote(transfer_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Optional [transfer](page:resources/transfers) quote cancellation that auto-cancels after a period organically expires or when account activity invalidates the quote.
  #
  def test_cancel_transfer_quote
    # Parameters for the API call
    transfer_token = 'xfer-0fac4aa8-43ac-447e-95f9-827f908a82ff'

    # Perform the API call through the SDK function
    result = @controller.cancel_transfer_quote(transfer_token)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a list of user [transfers](page:resources/transfers) that supports filtering, sorting, and pagination through existing mechanisms.
  def test_list_user_transfers
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    page = 1
    page_size = 20
    filter = 'string'
    sort = 'string'
    language = 'en-US'

    # Perform the API call through the SDK function
    result = @controller.list_user_transfers(user_token, page, page_size,
                                             filter: filter, sort: sort,
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
      '{"payload":[{"token":"xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8","clien'\
      'tTransferId":"1066ab05-84d0-453f-a827-1bd3b2ad9e3d","created":"2025-06-'\
      '23T19:17:22Z","destinationAmount":-14,"destinationCurrency":"USD","dest'\
      'inationToken":"dest-80611686-e311-4acd-aeeb-244609a3b12b","fee":{"categ'\
      'ory":"USER","destinationCountry":"USA","destinationCurrency":"USD","dis'\
      'tribution":[{"amount":1.5,"currency":"USD","description":[{"language":"'\
      'en-US","translation":"Transfer to a Bank Fee"},{"language":"en-US","tra'\
      'nslation":"Poplatek za převod do banky"},{"language":"de-DE","translati'\
      'on":"Transfer zu einer Bankgebühr"},{"language":"es-ES","translation":"'\
      'Coste de la transferencia a un banco"},{"language":"en-US","translation'\
      '":"Pankkiin siirto -maksu"},{"language":"fr-FR","translation":"Frais de'\
      ' virement vers une banque"},{"language":"it-IT","translation":"Tariffa '\
      'Trasferimento Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"'\
      '},{"language":"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL",'\
      '"translation":"Kosten bankoverschrijving"},{"language":"pl-PL","transla'\
      'tion":"Opłata za przelew do banku"},{"language":"pt-BR","translation":"'\
      'Taxa de Transferência para um Banco"},{"language":"ru-RU","translation"'\
      ':"Комиссия за перевод на банковский счет"},{"language":"en-US","transla'\
      'tion":"Avgift för överföring till en bank"},{"language":"zh-Hans","tran'\
      'slation":"转账到银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"'\
      'language":"fr-CA","translation":"Frais de transfert bancaire"},{"langua'\
      'ge":"pt-PT","translation":"Taxa de Transferência para um Banco"},{"lang'\
      'uage":"es-MX","translation":"Transferencia a una Tarifa Bancaria"},{"la'\
      'nguage":"en-GB","translation":"Transfer to a Bank Fee"}],"formattedAmou'\
      'nt":"$1.50 USD","percentage":1,"responsibility":"USER","responsibilityS'\
      'ource":"SCHEDULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e6'\
      '78e"}],"source":"TRANSACTION","totalAmount":-12.5,"transactionAmount":-'\
      '14,"type":"BANK_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRa'\
      'te":{"destinationAmount":-14,"destinationCurrency":"USD","rate":1,"sour'\
      'ceAmount":-14,"sourceCurrency":"USD","sourceFormattedAmount":"($14.00) '\
      'USD","destinationFormattedAmount":"($14.00) USD"},"memo":"Bank transfer'\
      ' - memo","note":"Bank transfer - note","sourceToken":"user-65ec33d0-451'\
      '8-41bb-8822-ed58c69e678e","status":"ACCEPTED","receiptToken":"rcpt-337b'\
      '4c59-821d-4bac-a1dd-c9d7c15e41e8","destinationFormattedAmount":"($14.00'\
      ') USD","amount":-14,"formattedAmount":"($14.00) USD","transferLockSide"'\
      ':"SOURCE","transferMethodType":"IACH","deliveryDetails":{"minimumDelive'\
      'ryMinutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https'\
      '://api.sandbox.payquicker.io/api/v2/users/user-65ec33d0-4518-41bb-8822-'\
      'ed58c69e678e/transfers/xfer-337b4c59-821d-4bac-a1dd-c9d7c15e41e8","para'\
      'ms":{"rel":"self"}}]}],"meta":{"pageNo":"1","pageSize":"2","pageCount":'\
      '"1","recordCount":"1","timezone":"GMT","requestRef":"request-reference-'\
      'value"},"links":[{"href":"https://api.sandbox.payquicker.io/api/v2/user'\
      's/user-65ec33d0-4518-41bb-8822-ed58c69e678e/transfers?page=1&language=e'\
      'n-US&filter=%27transfertype%27=%27BANK_TRANSFER%27&pageSize=2","params"'\
      ':{"rel":"self"}}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieve a specific user bank [transfer](page:resources/transfers).
  def test_retrieve_user_transfer
    # Parameters for the API call
    user_token = 'user-2bbfc967-d12e-4647-a887-d905172fb4bc'
    transfer_token = 'xfer-bf34989d-0b13-47ee-bd51-b96b0ecbe866'

    # Perform the API call through the SDK function
    result = @controller.retrieve_user_transfer(user_token, transfer_token)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"token":"xfer-0722428d-7929-4bb5-a7eb-8526e8fe49e2","clientTransferId"'\
      ':"af1d26c4-07d8-4bba-bdf6-104fda46e896","created":"2025-06-24T12:40:53Z'\
      '","destinationAmount":14,"destinationCurrency":"USD","destinationToken"'\
      ':"dest-80611686-e311-4acd-aeeb-224609a3b12b","fee":{"category":"USER","'\
      'destinationCountry":"USA","destinationCurrency":"USD","distribution":[{'\
      '"amount":1.5,"currency":"USD","description":[{"language":"en-US","trans'\
      'lation":"Transfer to a Bank Fee"},{"language":"en-US","translation":"Po'\
      'platek za převod do banky"},{"language":"de-DE","translation":"Transfer'\
      ' zu einer Bankgebühr"},{"language":"es-ES","translation":"Coste de la t'\
      'ransferencia a un banco"},{"language":"en-US","translation":"Pankkiin s'\
      'iirto -maksu"},{"language":"fr-FR","translation":"Frais de virement ver'\
      's une banque"},{"language":"it-IT","translation":"Tariffa Trasferimento'\
      ' Bancario"},{"language":"ja-JP","translation":"銀行への送金の手数料"},{"language"'\
      ':"ko-KR","translation":"은행으로 송금 수수료"},{"language":"nl-NL","translation"'\
      ':"Kosten bankoverschrijving"},{"language":"pl-PL","translation":"Opłata'\
      ' za przelew do banku"},{"language":"pt-BR","translation":"Taxa de Trans'\
      'ferência para um Banco"},{"language":"ru-RU","translation":"Комиссия за'\
      ' перевод на банковский счет"},{"language":"en-US","translation":"Avgift'\
      ' för överföring till en bank"},{"language":"zh-Hans","translation":"转账到'\
      '银行手续费"},{"language":"zh-Hant","translation":"轉帳至銀行手續費"},{"language":"fr'\
      '-CA","translation":"Frais de transfert bancaire"},{"language":"pt-PT","'\
      'translation":"Taxa de Transferência para um Banco"},{"language":"es-MX"'\
      ',"translation":"Transferencia a una Tarifa Bancaria"},{"language":"en-G'\
      'B","translation":"Transfer to a Bank Fee"}],"formattedAmount":"$1.50 US'\
      'D","percentage":1,"responsibility":"USER","responsibilitySource":"SCHED'\
      'ULE","sourceToken":"user-65ec33d0-4518-41bb-8822-ed58c69e678e"}],"sourc'\
      'e":"TRANSACTION","totalAmount":15.5,"transactionAmount":14,"type":"BANK'\
      '_TRANSFER","valueAmount":1.5,"valueType":"STATIC"},"fxRate":{"destinati'\
      'onAmount":14,"destinationCurrency":"USD","rate":1,"sourceAmount":14,"so'\
      'urceCurrency":"USD","sourceFormattedAmount":"$14.00 USD","destinationFo'\
      'rmattedAmount":"$14.00 USD"},"memo":"Bank transfer - memo","note":"Bank'\
      ' transfer - note","sourceToken":"user-65ec33d0-4518-41bb-2822-ed58c69e6'\
      '78e","status":"PENDING_ACCEPTANCE","destinationFormattedAmount":"$14.00'\
      ' USD","amount":14,"formattedAmount":"$14.00 USD","transferLockSide":"SO'\
      'URCE","transferMethodType":"IACH","deliveryDetails":{"minimumDeliveryMi'\
      'nutes":4320,"maximumDeliveryMinutes":10080},"links":[{"href":"https://a'\
      'pi.sandbox.payquicker.io/api/v2/transfers/xfer-0722448d-7929-4bb5-a7eb-'\
      '8526e8fe49e2","params":{"rel":"self"}}],"meta":{"timezone":"GMT","reque'\
      'stRef":"request-reference-value"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end