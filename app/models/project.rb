class Project < ActiveRecord::Base

  validates :title, :description, :live_url, :source_code_link, presence: true

  validates_attachment :image
  has_attached_file :image, :styles => { :medium => "300x000>", :thumb => "100x100>" }
end
