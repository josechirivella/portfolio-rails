class AddImageStringToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :background_image_url, :string
  end
end
