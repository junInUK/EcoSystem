class Bear

  attr_reader :name,:type,:stomach

# stomach should hold a few fishes, it's a fish array
  def initialize(name,type,stomach=[])
    @name = name
    @type = type
    @stomach = stomach
  end

  def take_fish(fish)
    @stomach.push(fish)
  end

  def roar()
    return "I am hungry!"
  end

  def food_count()
    return @stomach.count()
  end

end
