require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../hunt.rb')

class TestBear<MiniTest::Test

  def setup
    @fish1 = Fish.new('poor fish')
    @fish2 = Fish.new('another poor fish')
    @bear1 = Bear.new('william','pole bear')
    @river1 = River.new('Amazon',[@fish1,@fish2])
    @hunt1 = Hunt.new(@bear1,@river1,@fish1)
  end

  def test_hunt()
    @hunt1.hunt()
    assert_equal(1,@bear1.food_count())
    assert_equal(1,@river1.fish_count())
  end

end
