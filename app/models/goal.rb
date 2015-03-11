class Goal < ActiveRecord::Base
	belongs_to :milestone

	validates :name, presence: true
end
