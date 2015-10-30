class Project < ActiveRecord::Base

  validates_presence_of :title, :description, :live_url, :source_code_link, :background_image_url
end
