class Sproject < ActiveRecord::Base
	has_many :students, through: :students_sprojects
	has_many :students_sprojects
	has_many :subjects, through: :subjects_sprojects
	has_many :subjects_sprojects
	has_many :milestones

	validates :name, presence: true;
end
