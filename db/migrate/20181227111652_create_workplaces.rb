class CreateWorkplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workplaces do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :amenities
      t.string :area
      t.string :location
      t.integer :desk_price
      t.integer :bed_price
      t.float :latitude
      t.float :longitude
      t.string :picture
      t.string :keyword
      t.integer :owner_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
