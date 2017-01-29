class Experience < ActiveRecord::Base
	validates_presence_of :title, :company, :description, :from_date
end
