# pay_quicker_sdk
#
# This file was automatically generated for PayQuicker by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module PayQuickerSdk
  # FeeConfiguration Model.
  class FeeConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Category types
    # @return [CategoryTypes]
    attr_accessor :category

    # Category types
    # @return [Array[FeeDistribution]]
    attr_accessor :distribution

    # Fee source types
    # @return [FeeSources]
    attr_accessor :source

    # Total amount of money for all transactions
    # @return [Float]
    attr_accessor :total_amount

    # Total amount of money for the transaction
    # @return [Float]
    attr_accessor :transaction_amount

    # Fee types
    # @return [Fees]
    attr_accessor :type

    # Value of the target resource
    # @return [String]
    attr_accessor :value_amount

    # Fee value types
    # @return [FeeValues]
    attr_accessor :value_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['category'] = 'category'
      @_hash['distribution'] = 'distribution'
      @_hash['source'] = 'source'
      @_hash['total_amount'] = 'totalAmount'
      @_hash['transaction_amount'] = 'transactionAmount'
      @_hash['type'] = 'type'
      @_hash['value_amount'] = 'valueAmount'
      @_hash['value_type'] = 'valueType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        category
        distribution
        source
        total_amount
        transaction_amount
        type
        value_amount
        value_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(category = SKIP, distribution = SKIP, source = SKIP,
                   total_amount = SKIP, transaction_amount = SKIP, type = SKIP,
                   value_amount = SKIP, value_type = SKIP,
                   additional_properties = {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @category = category unless category == SKIP
      @distribution = distribution unless distribution == SKIP
      @source = source unless source == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @transaction_amount = transaction_amount unless transaction_amount == SKIP
      @type = type unless type == SKIP
      @value_amount = value_amount unless value_amount == SKIP
      @value_type = value_type unless value_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      category = hash.key?('category') ? hash['category'] : SKIP
      # Parameter is an array, so we need to iterate through it
      distribution = nil
      unless hash['distribution'].nil?
        distribution = []
        hash['distribution'].each do |structure|
          distribution << (FeeDistribution.from_hash(structure) if structure)
        end
      end

      distribution = SKIP unless hash.key?('distribution')
      source = hash.key?('source') ? hash['source'] : SKIP
      total_amount = hash.key?('totalAmount') ? hash['totalAmount'] : SKIP
      transaction_amount =
        hash.key?('transactionAmount') ? hash['transactionAmount'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      value_amount = hash.key?('valueAmount') ? hash['valueAmount'] : SKIP
      value_type = hash.key?('valueType') ? hash['valueType'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeeConfiguration.new(category,
                           distribution,
                           source,
                           total_amount,
                           transaction_amount,
                           type,
                           value_amount,
                           value_type,
                           additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} category: #{@category}, distribution: #{@distribution}, source: #{@source},"\
      " total_amount: #{@total_amount}, transaction_amount: #{@transaction_amount}, type:"\
      " #{@type}, value_amount: #{@value_amount}, value_type: #{@value_type},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} category: #{@category.inspect}, distribution: #{@distribution.inspect},"\
      " source: #{@source.inspect}, total_amount: #{@total_amount.inspect}, transaction_amount:"\
      " #{@transaction_amount.inspect}, type: #{@type.inspect}, value_amount:"\
      " #{@value_amount.inspect}, value_type: #{@value_type.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
