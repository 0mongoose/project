class Milestone < ActiveRecord::Base
	belongs_to :sproject
	has_many :goals

	validates :name, presence: true;
end
