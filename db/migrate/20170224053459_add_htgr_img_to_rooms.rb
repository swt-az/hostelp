class AddHtgrImgToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :htgr_img, :string
    add_column :rooms, :htgk_img, :string
  end
end
