class Student < ActiveRecord::Base
	belongs_to :user

	has_many :subjects, through: :students_subjects
	has_many :students_subjects
	has_many :topics, through: :students_topics
	has_many :students_topics
	has_many :sprojects, through: :students_sprojects
	has_many :students_sprojects

	def get_subject_level (subject_id)
		sum = 0;
		count = 0;
		Subject.find(subject_id).topics.each do |topic| 
			if self.topics.exists?(topic.id) 
				sum = sum + (StudentsTopic.where(topic_id: topic.id, student_id: self.id).first.score).to_i
				count = count + 1
			end
		end
		if count > 0
			sum/count
		else
			0
		end
	end

	def get_all_subjects
		result = []
		self.subjects.each  do |subject|
			result.push( {"name" => subject.name,"level" => self.get_subject_level(subject.id)})
		end
		result
	end
end
