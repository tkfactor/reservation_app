class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_introduction, :room_price, :room_address, :room_image, :user_id, :room_id))
    @room.user_id = current_user.id
    if @room.save
      flash[:success] = "ルームを登録しました"
      redirect_to @room
    else
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

def search
  @q = Room.ransack(params[:id])
  @rooms = @q.result(distinct: true)
  @count = @rooms.count
end
end
