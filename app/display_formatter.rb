class DisplayFormatter
  attr_accessor :strategies

  def initialize(*strategies)
    @strategies = []
  end

  def get_display_for(entity)
    matched_strategy = find_strategy_for(entity)
    matched_strategy.display_honorific(entity)
  end

  def find_strategy_for(entity)
    @strategies.select {|strategy| strategy.matches(entity) }.first
  end
end

