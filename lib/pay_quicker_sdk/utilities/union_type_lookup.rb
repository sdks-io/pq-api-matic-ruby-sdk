# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    include CoreLibrary
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :PaymentQuote => OneOf.new(
          [
            LeafType.new(GatewayPaymentQuote),
            LeafType.new(PortalPaymentQuote)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SpendbackQuote => OneOf.new(
          [
            LeafType.new(GatewaySpendbackQuote),
            LeafType.new(PortalSpendbackQuote)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :TransferQuote => OneOf.new(
          [
            LeafType.new(GatewayTransferQuote),
            LeafType.new(PortalTransferQuote)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PaymentJob => OneOf.new(
          [
            LeafType.new(GatewayPaymentJob),
            LeafType.new(PortalPaymentJob)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
