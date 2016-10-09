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

    @hendrix_room = Room.new("Hendrix Room", nil, nil, 6, 5.00)
    @simone_room = Room.new("Simone Room", nil, nil, 3, 9.64)
    @beatles_room = Room.new("Beatles Room", nil, nil, 8, 0.44)

    @guests = [@guest1, @guest2, @guest3, @guest4]

    @hendrix_playlist = [song1, song2, song3, song4]
    @simone_playlist = [song5, song6, song7]
    @beatles_playlist = [song8, song9, song10]

  end

  def test_room_has_name
    assert_equal("Hendrix Room", @hendrix_room.name)
  end









end
