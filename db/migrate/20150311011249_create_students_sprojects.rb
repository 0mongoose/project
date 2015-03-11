class CreateStudentsSprojects < ActiveRecord::Migration
  def change
    create_table :students_sprojects do |t|
      t.integer :student_id
      t.integer :sproject_id

      t.timestamps null: false
    end
  end
end
