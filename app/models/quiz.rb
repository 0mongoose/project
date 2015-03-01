class Quiz < ActiveRecord::Base
	belongs_to :student
	has_many :questions, through: :quizzes_questions
	has_many :quizzes_questions

	#choose questions from specified topic, add questions to quiz
	def generate(topic = [])
		unless self.no_of_questions
			self.no_of_questions = 10
		end
		unless topic.empty?
			ids = Question.where(topic_id: topic).pluck(:id).shuffle[0..9]
		else
			ids = Question.pluck(:id).shuffle[0..9]
		end
		questions = Question.where(id: ids)
		self.questions = questions
	end

	def grade
		grade = 0
		questions.each do |question|
			if answers["#{question.id}"] == "#{question.answer}"
				grade = grade + 1
			end
		end		
		self.graded = true;
		self.score = grade
	end
end
