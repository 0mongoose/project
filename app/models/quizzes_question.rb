class QuizzesQuestion < ActiveRecord::Base
	belongs_to :quiz 
	belongs_to :question
end
