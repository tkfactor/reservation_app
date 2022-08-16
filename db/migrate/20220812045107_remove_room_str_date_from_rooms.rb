class RemoveRoomStrDateFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :room_str_date, :date
  end
end
