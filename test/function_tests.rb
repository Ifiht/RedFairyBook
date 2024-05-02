require "redfairy"
require "test/unit"

class TestNewDb < Test::Unit::TestCase
  def test_init
    rf = RedFairy.new("test")
    rf.save
    assert_true(File.exist?(File.join(Dir.home, ".config", "test", "config.yml")))
  end

  def test_rw
    rf = RedFairy.new("fairy")
    rf.set("knight", "shining")
    assert_true(rf.has?("knight"))
    assert_equal(rf.get("knight"), "shining")
  end

  def test_nokey
    rf = RedFairy.new("game")
    assert_equal(rf.get("life"), nil)
  end
end
