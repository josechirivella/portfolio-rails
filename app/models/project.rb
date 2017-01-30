class Project < ActiveRecord::Base
  extend FriendlyId
  validates_presence_of :title, :description, :advance_description, :live_url, :background_image_url

  friendly_id :title, use: :slugged
end
