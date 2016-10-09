
class Room

  attr_reader :name

  def initialize(name, playlist, guests, capacity, entry_fee)
    @name = name
    @playlist = playlist
    @guests = guests
    @capacity = capacity
    @entry_fee = entry_fee
  end




end