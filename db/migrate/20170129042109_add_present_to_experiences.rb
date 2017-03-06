class AddPresentToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :present_date, :boolean, :default => false
  end
end
