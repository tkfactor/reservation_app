class AddColumnsToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_str_date, :date
    add_column :rooms, :room_end_date, :date
    add_column :rooms, :room_number, :integer
  end
end
