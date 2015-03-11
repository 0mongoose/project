class Subject < ActiveRecord::Base
	
	has_many :children, class_name: "Subject", foreign_key: "subject_id"
	has_many :students, through: :students_subjects
	has_many :students_subjects
	has_many :topics, through: :subjects_topics
	has_many :subjects_topics

	belongs_to :parent, class_name: "Subject", foreign_key: "subject_id"

	validates :name, presence: true

	def is_basic?
		self.parent.nil?
	end

	def is_barren?
		self.children.empty?
	end

	def to_node
		result = {}
		keys = self.attributes.keys
		keys.each{|key| result[key] = attributes[key]}
		result["children"] = self.children.map {|c| c.to_node}
	    result
  	end
end
