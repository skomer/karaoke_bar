require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guest.rb'

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Ruth", "Purple Haze", 10.00)
    @guest2 = Guest.new("Jonny", "Get Back", 13.57)
    @guest3 = Guest.new("Malcolm", "Feeling Good", 3.20)
    @guest4 = Guest.new("Howie", "Toccata and Fugue in D Minor", 25.60)
  end


  def test_guest_has_name
    assert_equal("Jonny", @guest2.guest_name)
  end

  def test_guest_has_fav_song
    assert_equal("Feeling Good", @guest3.fav_song)
  end




  end