class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, default: ''
      t.text :description, default: ''

      t.timestamps null: false
    end
  end
end
