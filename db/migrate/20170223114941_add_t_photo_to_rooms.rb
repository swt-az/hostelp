class AddTPhotoToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :t_photo, :string
  end
end
