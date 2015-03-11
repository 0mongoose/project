class AddUsedToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :used, :integer
  end
end
