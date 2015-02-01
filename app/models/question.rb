class Question < ActiveRecord::Base

	has_many :topics, through: :topics_questions
	has_many :topics_questions

	validates :content, presence: true
	validates :type, presence: true
end
