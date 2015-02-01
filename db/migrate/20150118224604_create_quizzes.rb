class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.float :result
      t.integer :no_of_questions

      t.timestamps null: false
    end
  end
end
