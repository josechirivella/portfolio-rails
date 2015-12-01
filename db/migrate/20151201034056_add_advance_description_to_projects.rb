class AddAdvanceDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :advance_description, :text
  end
end
