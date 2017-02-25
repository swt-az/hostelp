class AddGoogleToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :google, :text
  end
end
