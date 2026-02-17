# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  #  pay_quicker_sdk client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    def user_agent_detail
      config.user_agent_detail
    end

    # Returns the configured authentication server instance.
    def server
      @auth_managers['server']
    end

    # Access to agreements controller.
    # @return [AgreementsController] Returns the controller instance.
    def agreements
      @agreements ||= AgreementsController.new @global_configuration
    end

    # Access to balances controller.
    # @return [BalancesController] Returns the controller instance.
    def balances
      @balances ||= BalancesController.new @global_configuration
    end

    # Access to bank_accounts controller.
    # @return [BankAccountsController] Returns the controller instance.
    def bank_accounts
      @bank_accounts ||= BankAccountsController.new @global_configuration
    end

    # Access to client_side controller.
    # @return [ClientSideController] Returns the controller instance.
    def client_side
      @client_side ||= ClientSideController.new @global_configuration
    end

    # Access to compliance controller.
    # @return [ComplianceController] Returns the controller instance.
    def compliance
      @compliance ||= ComplianceController.new @global_configuration
    end

    # Access to documents controller.
    # @return [DocumentsController] Returns the controller instance.
    def documents
      @documents ||= DocumentsController.new @global_configuration
    end

    # Access to electronic_wallets controller.
    # @return [ElectronicWalletsController] Returns the controller instance.
    def electronic_wallets
      @electronic_wallets ||= ElectronicWalletsController.new @global_configuration
    end

    # Access to events controller.
    # @return [EventsController] Returns the controller instance.
    def events
      @events ||= EventsController.new @global_configuration
    end

    # Access to payments controller.
    # @return [PaymentsController] Returns the controller instance.
    def payments
      @payments ||= PaymentsController.new @global_configuration
    end

    # Access to prepaid_cards controller.
    # @return [PrepaidCardsController] Returns the controller instance.
    def prepaid_cards
      @prepaid_cards ||= PrepaidCardsController.new @global_configuration
    end

    # Access to program controller.
    # @return [ProgramController] Returns the controller instance.
    def program
      @program ||= ProgramController.new @global_configuration
    end

    # Access to receipts controller.
    # @return [ReceiptsController] Returns the controller instance.
    def receipts
      @receipts ||= ReceiptsController.new @global_configuration
    end

    # Access to spendback controller.
    # @return [SpendbackController] Returns the controller instance.
    def spendback
      @spendback ||= SpendbackController.new @global_configuration
    end

    # Access to spendback_refunds controller.
    # @return [SpendbackRefundsController] Returns the controller instance.
    def spendback_refunds
      @spendback_refunds ||= SpendbackRefundsController.new @global_configuration
    end

    # Access to statements controller.
    # @return [StatementsController] Returns the controller instance.
    def statements
      @statements ||= StatementsController.new @global_configuration
    end

    # Access to transfers controller.
    # @return [TransfersController] Returns the controller instance.
    def transfers
      @transfers ||= TransfersController.new @global_configuration
    end

    # Access to users controller.
    # @return [UsersController] Returns the controller instance.
    def users
      @users ||= UsersController.new @global_configuration
    end

    # Access to webhooks controller.
    # @return [WebhooksController] Returns the controller instance.
    def webhooks
      @webhooks ||= WebhooksController.new @global_configuration
    end

    # Access to jobs controller.
    # @return [JobsController] Returns the controller instance.
    def jobs
      @jobs ||= JobsController.new @global_configuration
    end

    # Access to invitations controller.
    # @return [InvitationsController] Returns the controller instance.
    def invitations
      @invitations ||= InvitationsController.new @global_configuration
    end

    # Access to o_auth_authorization controller.
    # @return [OAuthAuthorizationController] Returns the controller instance.
    def o_auth_authorization
      @o_auth_authorization ||= OAuthAuthorizationController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil, proxy_settings: nil,
      logging_configuration: nil, environment: Environment::SANDBOX,
      sandbox_instance: SandboxInstance::SANDBOX,
      uat_instance: UatInstance::UAT1, server_credentials: nil,
      clientside_credentials: nil, x_my_pay_quicker_version: '2026.02.01',
      config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    proxy_settings: proxy_settings,
                    logging_configuration: logging_configuration,
                    environment: environment,
                    sandbox_instance: sandbox_instance,
                    uat_instance: uat_instance,
                    server_credentials: server_credentials,
                    clientside_credentials: clientside_credentials,
                    x_my_pay_quicker_version: x_my_pay_quicker_version
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)
                                                 .global_header('X-MyPayQuicker-Version', @config.x_my_pay_quicker_version)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[server clientside].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['server'] = Server.new(http_client_config.server_credentials, global_config)
      @auth_managers['clientside'] = Clientside.new(http_client_config.clientside_credentials)
    end

    # Creates a client directly from environment variables.
    def self.from_env(**overrides)
      default_config = Configuration.build_default_config_from_env
      new_config = default_config.clone_with(**overrides)
      new(config: new_config)
    end
  end
end
