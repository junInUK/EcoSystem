require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver<MiniTest::Test

  def setup
    @fish1 = Fish.new('Salmon')
    @fish2 = Fish.new('Bazz')
    @fish3 = Fish.new('lucy')
    @river1 = River.new('Amazon',[@fish1,@fish2])
  end

  def test_get_river_name()
    assert_equal('Amazon',@river1.name)
  end

  def test_get_fish_of_river()
    assert_equal(2,@river1.fish_count())
  end

  def test_lose_fish__in_river()
    @river1.lose_fish(@fish1)
    assert_equal(1,@river1.fish_count())
  end

  def test_lose_fish__not_in_river()
    @river1.lose_fish(@fish3)
    assert_equal(2,@river1.fish_count())
  end

  def test_river_fish_count()
    assert_equal(2,@river1.fish_count())
  end

end
