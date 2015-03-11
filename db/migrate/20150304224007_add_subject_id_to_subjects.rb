class AddSubjectIdToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :subject_id, :integer
  end
end
