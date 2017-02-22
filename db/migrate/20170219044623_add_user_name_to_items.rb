class AddUserNameToItems < ActiveRecord::Migration
  def change
    add_column :items, :user_name, :text
  end
end
