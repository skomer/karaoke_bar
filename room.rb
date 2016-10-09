
require 'pry-byebug'

class Room

  attr_reader :room_name

  def initialize(room_name, playlist, guests, capacity, entry_fee)
    @room_name = room_name
    @playlist = playlist
    @guests = guests
    @capacity = capacity
    @entry_fee = entry_fee
    @fee_takings = 0
  end

  def guests_in_room
    guests_here = @guests.map { |guest| guest.guest_name }
    guests_here = guests_here.join(", ")
    return "Guest(s) in #{@room_name}: #{guests_here}"
  end  

  def guests_pay_fee
    guests_can_pay = @guests.select { |guest| guest.money >= @entry_fee }
    guests_cannot_pay = @guests.select { |guest| guest.money < @entry_fee }

    guests_can_pay = guests_can_pay.map { |guest| guest.guest_name }
    guests_cannot_pay = guests_cannot_pay.map { |guest| guest.guest_name }

    return "These guests may enter #{@room_name}: #{guests_can_pay.join(", ")}.\n These guests may not enter #{@room_name}: #{guests_cannot_pay.join(", ")}"
  end


end








