class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.boolean :completed
      t.date :completed_on

      t.timestamps null: false
    end
  end
end
