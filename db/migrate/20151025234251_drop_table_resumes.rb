class DropTableResumes < ActiveRecord::Migration
  def change
    drop_table :resumes
  end
end
