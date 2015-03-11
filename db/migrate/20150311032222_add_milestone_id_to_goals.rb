class AddMilestoneIdToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :milestone_id, :integer
  end
end
