class Experience < ActiveRecord::Base
  validates :title, :description, :date, presence: true
end
