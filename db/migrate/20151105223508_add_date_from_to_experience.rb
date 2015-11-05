class AddDateFromToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :from_date, :date
    add_column :experiences, :until, :date
    remove_column :experiences, :date, :date
  end
end
