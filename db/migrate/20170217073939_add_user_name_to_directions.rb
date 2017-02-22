class AddUserNameToDirections < ActiveRecord::Migration
  def change
    add_column :directions, :user_name, :text
  end
end
