class RemoveCourseFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :course, :text
  end
end
