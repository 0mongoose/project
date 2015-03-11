class CreateSubjectsSprojects < ActiveRecord::Migration
  def change
    create_table :subjects_sprojects do |t|
      t.integer :subject_id
      t.integer :sproject_id

      t.timestamps null: false
    end
  end
end
