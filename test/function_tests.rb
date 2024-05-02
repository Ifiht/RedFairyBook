require "redfairy"
require "test/unit"
 
class TestNewDb < Test::Unit::TestCase
 
  def test_init
    rf = RedFairy.new("test")
    rf.save
    assert_true(File.exists?("#{Dir.home}/.config/test/config.yml"))
  end

  def test_rw
    rf = RedFairy.new("fairy")
    rf.set("knight", "shining")
    assert_true(rf.has?("knight"))
    assert_equal(rf.get("knight"), "shining")
  end
 
end
