class StudentsSproject < ActiveRecord::Base
	belongs_to :student 
	belongs_to :sproject
end
