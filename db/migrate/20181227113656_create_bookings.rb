class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :rate
      t.text :review
      t.integer :freeuser_id
      t.integer :premiumuser_id
      t.integer :owner_id
      t.references :workplace, foreign_key: true

      t.timestamps
    end
  end
end
