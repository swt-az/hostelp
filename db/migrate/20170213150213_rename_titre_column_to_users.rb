class RenameTitreColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :name, :nickname
  end
end
