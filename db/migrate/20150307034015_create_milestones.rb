class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :name
      t.integer :difficult
      t.date :completed_on

      t.timestamps null: false
    end
  end
end
