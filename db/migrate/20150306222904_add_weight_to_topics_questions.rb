class AddWeightToTopicsQuestions < ActiveRecord::Migration
  def change
  	add_column :topics_questions, :weight, :integer
  end
end
