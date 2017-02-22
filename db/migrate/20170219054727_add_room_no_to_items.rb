class AddRoomNoToItems < ActiveRecord::Migration
  def change
    add_column :items, :room_no, :integer
  end
end
