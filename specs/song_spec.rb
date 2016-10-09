require 'minitest/autorun'
require 'minitest/rg'
require_relative 'song_spec.rb'

class TestSong

  def setup
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
  end

  def test_song_has_title_and_artist
    assert_equal("Foxey Lady", @song2.title)
    assert_equal("Nina Simone", @song7.artist)
  end


end