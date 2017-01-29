class Experience < ActiveRecord::Base
	validates_presence_of :title, :company, :description, :from_date
	if self.present === false
		validate_presence_of :until
	else
		validate_presence_of :present
	end
end
