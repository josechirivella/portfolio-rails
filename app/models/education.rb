class Education < ActiveRecord::Base
  validates :title, :description, :date, presence: true

end