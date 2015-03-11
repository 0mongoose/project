class ChangeQuestionTypeToCategory < ActiveRecord::Migration
  def change
  	rename_column :questions, :type, :category
  end
end
