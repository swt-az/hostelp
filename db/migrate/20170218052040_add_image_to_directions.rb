class AddImageToDirections < ActiveRecord::Migration
  def change
    add_column :directions, :image, :string
  end
end
