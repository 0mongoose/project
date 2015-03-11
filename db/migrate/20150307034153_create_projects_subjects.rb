class CreateProjectsSubjects < ActiveRecord::Migration
  def change
    create_table :projects_subjects do |t|
      t.integer :project_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
