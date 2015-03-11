class AddScoreToStudentsTopics < ActiveRecord::Migration
  def change
  	add_column :students_topics, :score, :integer
  end
end
