require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class TestFish<MiniTest::Test

  def setup
    @fish1 = Fish.new('Salmon')
  end

  def test_get_fish_name()
    assert_equal('Salmon',@fish1.name)
  end

end
