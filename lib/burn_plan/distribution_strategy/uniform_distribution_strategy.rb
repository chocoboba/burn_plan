module BurnPlan
  module DistributionStrategy
    # taken an equal dollar amount from all assets
    class UniformDistributionStrategy < DistributionStrategy
      def initialize(total_distribution_amount)
        @total_distribution_amount = total_distribution_amount
      end

      def create_distribution(portfolio)
        distribution_amount_per_asset = 1.0 * @total_distribution_amount / portfolio.assets.count
        distribution = DistributionBuilder.new
        portfolio.assets.values.each do |asset|
          # TODO: if one asset runs out of money, start taking from the other assets rather
          # than just throw your hands up and say you've run out of money
          if distribution_amount_per_asset > asset.value
            raise NotEnoughMoneyException.new("not enough value to distribute: #{distribution_amount_per_asset} from #{asset.value}")
          end
          distribution.add_asset Asset.new(asset.name, distribution_amount_per_asset)
        end
        distribution.build
      end
    end
  end
end
