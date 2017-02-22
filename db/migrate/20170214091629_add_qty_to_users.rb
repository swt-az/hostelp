class AddQtyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :qty, :integer
  end
end
