class AddColumnDescription < ActiveRecord::Migration
  def change
  	add_column :tutoring_requests, :description, :string
  end
end
