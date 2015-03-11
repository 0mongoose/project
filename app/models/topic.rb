class Topic < ActiveRecord::Base
	has_many :subjects, through: :subjects_topics
	has_many :subjects_topics

	has_many :questions, through: :topics_questions
	has_many :topics_questions

	validates :name, presence: true
end
