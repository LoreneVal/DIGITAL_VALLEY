class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :name, :string
    add_column :users, :type, :string
    add_column :users, :passion, :string
    add_column :users, :business, :string
  end
end
