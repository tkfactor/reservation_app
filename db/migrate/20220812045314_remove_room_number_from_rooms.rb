class RemoveRoomNumberFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :room_number, :integer
  end
end
