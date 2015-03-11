class AddAnsweredToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :answered, :integer
  end
end
