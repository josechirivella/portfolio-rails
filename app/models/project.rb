class Project < ActiveRecord::Base
  validates_presence_of :title, :description, :advance_description, :live_url, :background_image_url
end
