class CreateSprojects < ActiveRecord::Migration
  def change
    create_table :sprojects do |t|
      t.string :name
      t.text :description
      t.integer :mode
      t.date :completed_on

      t.timestamps null: false
    end
  end
end
