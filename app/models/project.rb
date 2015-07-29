class Project < ActiveRecord::Base


  has_attached_file :image, :styles => { :medium => "300x000>", :thumb => "100x100>" }
end
