class Project < ActiveRecord::Base

  validates_presence_of :title, :description, :live_url, :source_code_link

  validates_attachment :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image, :styles => { :medium => "300x000>", :thumb => "100x100>" }
end
