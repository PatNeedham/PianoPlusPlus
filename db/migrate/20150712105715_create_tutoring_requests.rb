class CreateTutoringRequests < ActiveRecord::Migration
  def change
    create_table :tutoring_requests do |t|
      t.string :created_by
      t.timestamp :created_at
      t.string :accepted_by
      t.timestamp :accepted_at
      t.decimal :max_price
      t.boolean :active

      t.timestamps null: false
    end
  end
end
