class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, default: ''
      t.text :description, default: ''
      t.integer :organization_id
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
