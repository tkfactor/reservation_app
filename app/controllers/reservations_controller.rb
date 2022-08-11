class ReservationsController < ApplicationController
  def new
    binding.pry
    @reservation = Reservation.new(reservation_params)
    binding.pry
    @room = Room.find(params[:room_id])
    binding.pry
  end

  def create
  end





  private
  def reservation_params
    binding.pry
   params.require(:reservation).permit(:str_date, :end_date, :number, :sum_price, :room_id, :user_id)
  end
end
