
require 'pry-byebug'

class Room

  attr_reader :room_name, :fee_takings

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

  def guests_can_afford_fee
    guest_objects_can_pay = @guests.select { |guest| guest.money >= @entry_fee }
    return guest_objects_can_pay
  end

  def guests_pay_fee
    guest_objects_can_pay = guests_can_afford_fee
    guest_objects_can_pay.each do |guest|
      # binding.pry
      guest.money = (guest.money - @entry_fee).round(2)
      # binding.pry
      @fee_takings = (@fee_takings + @entry_fee).round(2)
    end
    guest_objects_have_paid = guest_objects_can_pay
    return guest_objects_have_paid
  end

end








