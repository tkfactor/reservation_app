class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

  end

  def new
    @reservation = Reservation.new(reservation_params)
    @room = Room.find(params[:reservation][:room_id])
    @use_day = (@reservation.end_date - @reservation.str_date).to_i
    @sum_price = (@reservation.number * @use_day * @room.room_price).to_i
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @room = Room.find(@reservation.room_id)
    if @reservation.save
      flash[:success] = "予約を確定しました"
      redirect_to @reservation
    else
      render "new"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @room = Room.find(@reservation.room_id)
  end

  private
  def reservation_params
   params.require(:reservation).permit(:str_date, :end_date, :number, :sum_price, :room_id, :user_id)
  end
end
