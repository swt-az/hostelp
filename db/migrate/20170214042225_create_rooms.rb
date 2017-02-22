class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.text    :user_name
      t.text    :room_name
      t.text    :zip_code
      t.text    :address_en
      t.text    :address_jp
      t.text    :room_no


      t.timestamps
    end
  end
end
