class Resume < ActiveRecord::Base
  has_many :experience
  has_many :education
end
