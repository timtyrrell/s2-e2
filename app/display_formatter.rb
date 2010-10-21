class DisplayFormatter
  attr_accessor :strategies

  def initialize(*strategies)
    @strategies = []
  end

  def get_display_for(entity)
    strategy = find_strategy_for(entity)
    strategy.display_honorific(entity)
  end

  def find_strategy_for(entity)
    @strategies.each {|strategy| strategy.matches(entity)  }
  end
end

