class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :string
    add_column :users, :provider, :string
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :location, :string
    add_column :users, :image, :string
  end
end
