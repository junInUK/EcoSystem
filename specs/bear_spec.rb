require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear<MiniTest::Test

  def setup
    @fish1 = Fish.new('poor fish')
    @fish2 = Fish.new('another poor fish')
    @bear1 = Bear.new('william','pole bear')
    @river1 = River.new('Amazon',[@fish1,@fish2])
  end

  def test_get_bear_name()
    assert_equal('william',@bear1.name)
  end

  def test_get_bear_type()
    assert_equal('pole bear',@bear1.type)
  end

  def test_get_bear_stomach()
    assert_equal(0,@bear1.stomach.count())
  end

  def test_take_fish()
    @bear1.take_fish(@fish1)
    assert_equal(1,@bear1.stomach.count())
  end

  def test_bear_roar()
    assert_equal("I am hungry!",@bear1.roar())
  end

  def test_bear_food_count()
    @bear1.take_fish(@fish1)
    @bear1.take_fish(@fish2)
    assert_equal(2,@bear1.food_count())
  end

end
