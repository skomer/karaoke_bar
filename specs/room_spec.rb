require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room.rb'
require_relative '../guest.rb'
require_relative '../song.rb'


class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Ruth", "Purple Haze", 10.00)
    @guest2 = Guest.new("Jonny", "Get Back", 13.57)
    @guest3 = Guest.new("Malcolm", "Feeling Good", 3.20)
    @guest4 = Guest.new("Howie", "Toccata and Fugue in D Minor", 25.60)

    @song1 = Song.new("The Wind Cries Mary", "Jimi Hendrix")
    @song2 = Song.new("Foxey Lady", "Jimi Hendrix")
    @song3 = Song.new("Crosstown Traffic", "Jimi Hendrix")
    @song4 = Song.new("Purple Haze", "Jimi Hendrix")
    @song5 = Song.new("I Put a Spell on You", "Nina Simone")
    @song6 = Song.new("Feeling Good", "Nina Simone")
    @song7 = Song.new("My Baby Just Cares for Me", "Nina Simone")
    @song8 = Song.new("I am the Walrus", "The Beatles")
    @song9 = Song.new("Get Back", "The Beatles")
    @song10 = Song.new("Paperback Writer", "The Beatles")

    @guests = [@guest1, @guest2, @guest3, @guest4]

    @hendrix_playlist = [@song1, @song2, @song3, @song4]
    @simone_playlist = [@song5, @song6, @song7]
    @beatles_playlist = [@song8, @song9, @song10]

    @hendrix_room = Room.new("The Hendrix Room", @hendrix_playlist, @guests, 6, 5.00)
    @simone_room = Room.new("The Simone Room", @simone_playlist, @guests, 3, 9.64)
    @beatles_room = Room.new("The Beatles Room", @beatles_playlist, @guests, 8, 0.44)
  end

  def test_room_has_name
    assert_equal("The Hendrix Room", @hendrix_room.room_name)
  end

  def test_guest_is_in_room
    assert_equal("Guest(s) in The Beatles Room: Ruth, Jonny, Malcolm, Howie", @beatles_room.guests_in_room)
  end

  def test_guests_can_afford_fee
    guest_objects_can_pay = @simone_room.guests_can_afford_fee
    guests_can_pay = guest_objects_can_pay.map { |guest| guest.guest_name }
    assert_equal(["Ruth", "Jonny", "Howie"], guests_can_pay)
  end

  def test_guests_pay_when_they_enter_room
    guest_objects_have_paid = @simone_room.guests_pay_fee
    ruth = guest_objects_have_paid.select { |guest| guest.guest_name == "Ruth" }
    ruths_money = ruth.money
    assert_equal(0.36, ruths_money)
    assert_equal(28.92, @fee_takings)
  end

end
