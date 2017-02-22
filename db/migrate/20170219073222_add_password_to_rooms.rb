class AddPasswordToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :password, :integer
  end
end
