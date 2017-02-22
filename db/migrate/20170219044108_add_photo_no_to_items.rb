class AddPhotoNoToItems < ActiveRecord::Migration
  def change
    add_column :items, :photo_no, :text
  end
end
