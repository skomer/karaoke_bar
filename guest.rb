
class Guest

  attr_reader :guest_name, :fav_song
  attr_accessor :money


  def initialize(guest_name, fav_song, money)
    @guest_name = guest_name
    @fav_song = fav_song
    @money = money
  end

end