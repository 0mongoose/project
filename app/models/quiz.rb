class Quiz < ActiveRecord::Base
	belongs_to :student
	has_many :questions, through: :quizzes_questions
	has_many :quizzes_questions

	#choose questions from specified topic, add questions to quiz
	def generate(topics )
		topics = [] if topics.nil?
		unless self.no_of_questions
			self.no_of_questions = 10
		end
		unless topics.empty?
			ids = TopicsQuestion.where({topic_id: topics.sample.id, weight: (self.student.level - 1..self.student.level + 1)}).pluck(:question_id).shuffle[0..9]
		else
			ids = TopicsQuestion.where(weight: (self.student.level - 1..self.student.level + 1)).pluck(:question_id).shuffle[0..9]
		end
		if ids.length < no_of_questions
			unless topics.empty?
				ids = ids +  TopicsQuestion.where({topic_id: topics.sample.id, weight: (self.student.level - 1..self.student.level + 1)}).pluck(:question_id).shuffle[0..no_of_questions - ids.length]
			else
				ids = ids + TopicsQuestion.pluck(:question_id).shuffle[0..no_of_questions - ids.length]
			end
		end
		questions = Question.where(id: ids)
		self.questions = questions
		questions.each {|question| question.used = question.used + 1
			question.save
		}
	end

	def grade (answers)
		grade = 0
		self.questions.each do |question|
			if answers["#{question.id}"].to_i == question.correct_option.id
				puts "correct"
				grade = grade + 1
				if question.answered.nil? 
						question.answered = 1
					else
						question.answered = question.answered+ 1
					end
				topics = question.topics
				topics.each do |topic|
					student_topic = StudentsTopic.find_or_create_by(student_id: self.student_id, topic_id: topic.id)
					if student_topic.score.nil? 
						student_topic.score = 1
					else
						student_topic.score = student_topic.score + 1
					end
					student_topic.save
				end
			end
		end		
		self.result = grade
	end
end
