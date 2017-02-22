class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.integer     :photo_no
      t.text        :text
      t.timestamps
    end
  end
end
