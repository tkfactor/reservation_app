class RemoveRoomEndDateFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :room_end_date, :date
  end
end
