class Hunt
  def initialize(bear,river,fish)
    @bear = bear
    @river = river
    @fish = fish
  end

  def hunt()
    @river.lose_fish(@fish)
    @bear.take_fish(@fish)
  end

end
