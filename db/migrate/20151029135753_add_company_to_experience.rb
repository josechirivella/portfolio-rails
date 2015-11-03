class AddCompanyToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :company, :string
  end
end
