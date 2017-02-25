class AddHtgrToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :htgr, :text
    add_column :rooms, :htgk, :text
    add_column :rooms, :gmap, :string
    add_column :rooms, :aircon, :string
    add_column :rooms, :garbage, :string
  end
end
