class CreateStudentsTopics < ActiveRecord::Migration
  def change
    create_table :students_topics do |t|
    	t.integer :student_id
    	t.integer :topic_id
    	t.float :level
    end
  end
end
