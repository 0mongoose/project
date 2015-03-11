class Question < ActiveRecord::Base

	has_many :topics, through: :topics_questions
	has_many :topics_questions
	has_many :options

	has_attached_file :image,:url => "/images/questions/:id/image.:extension", :path => ":rails_root/public/images/questions/:id/image.:extension", :default_url => '/images/missing_:style.png'
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	validates :content, presence: true

	def correct_option
		self.options.where(correct: true).first
	end
end
