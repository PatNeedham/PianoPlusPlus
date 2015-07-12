class AddUserTypeBooleanAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :isTeacher, :boolean
    add_column :users, :isStudent, :boolean
  end
end
