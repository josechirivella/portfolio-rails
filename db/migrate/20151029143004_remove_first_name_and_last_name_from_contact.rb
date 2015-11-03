class RemoveFirstNameAndLastNameFromContact < ActiveRecord::Migration
  def change
    remove_column :contacts, :first_name, :string
    remove_column :contacts, :last_name, :string
  end
end
