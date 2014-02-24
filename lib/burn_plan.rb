require 'burn_plan/version'

module BurnPlan
  class NotEnoughMoneyException < Exception; end
end

require 'burn_plan/life'
require 'burn_plan/portfolio'
require 'burn_plan/asset'
require 'burn_plan/asset_class'
require 'burn_plan/economy'
require 'burn_plan/federal_reserve'
require 'burn_plan/inflation'
require 'burn_plan/returns'
require 'burn_plan/random_gaussian'
require 'burn_plan/monte_carlo'
require 'burn_plan/monte_carlo_results'
require 'burn_plan/distribution_strategy/distribution_strategy'
require 'burn_plan/distribution_strategy/no_distribution_strategy'
require 'burn_plan/distribution_strategy/uniform_distribution_strategy'
require 'burn_plan/distribution_strategy/uniform_percentage_distribution_strategy'
require 'burn_plan/rebalancing_strategy/rebalancing_strategy'
require 'burn_plan/rebalancing_strategy/no_rebalancing_strategy'
require 'burn_plan/rebalancing_strategy/optimal_rebalancing_strategy'
require 'burn_plan/trade'
require 'burn_plan/trades'
require 'burn_plan/tax_strategy/tax_strategy'
require 'burn_plan/tax_strategy/no_tax_strategy'
require 'burn_plan/tax_strategy/capital_gains_tax_strategy'
