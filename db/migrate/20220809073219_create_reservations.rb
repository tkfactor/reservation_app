class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :str_date
      t.date :end_date
      t.integer :number
      t.integer :price
      t.integer :sum_price

      t.timestamps
    end
  end
end
