class AddStudentIdToQuiz < ActiveRecord::Migration
  def change
  	add_column :quizzes, :student_id, :integer
  end
end
