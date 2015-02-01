class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :level
      t.float :time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
